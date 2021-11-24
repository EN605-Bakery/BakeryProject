package com.bakery.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bakery.model.Order;
import com.bakery.utils.HTMLTableGenerate;

/**
 * Servlet implementation class OrderController
 */
@WebServlet(name = "Order", urlPatterns = { "/Order" })
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the Required Params
		List<Order> orderList = new ArrayList<Order>();
		String[] quantity = request.getParameterValues("qty");
		String[] type = request.getParameterValues("type");
		String[] price = request.getParameterValues("typePrice");
		
		// Add the Parms to the List
		int i = 0;
		while (i < quantity.length) {
			Order ordertoAdd = new Order();
			ordertoAdd.setQuantity(Integer.parseInt(quantity[i]));
			ordertoAdd.setPrice(price[i]);
			ordertoAdd.setOrderType(type[i]);
			orderList.add(ordertoAdd);
			i++;
		}
		
		String orderToDisplay = HTMLTableGenerate.getHtmlTable(orderList);
		
		 request.setAttribute("orderList", orderToDisplay);
		RequestDispatcher dispatcher = getServletConfig().getServletContext()
				.getRequestDispatcher("/addToCart.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
