package com.bakery.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bakery.model.Order;
import com.bakery.utils.HTMLTableGenerate;

/**
 * Servlet implementation class RemoveController
 */
@WebServlet(name = "Remove", urlPatterns = { "/Remove" })
public class RemoveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveController() {
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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		List<Order> orderList = (List<Order>) session.getAttribute("orders");
		String url = "/addToCart.jsp";
		String orderToRemove = request.getParameter("orderToRemove");
		for (Iterator<Order> iterator = orderList.iterator(); iterator.hasNext();) {
			Order value = iterator.next();
			if (value.getOrderType().equalsIgnoreCase(orderToRemove)) {
				iterator.remove();
			}
		}
		String orderToDisplay = HTMLTableGenerate.getHtmlTable(orderList);
		request.setAttribute("orderList", orderToDisplay);
		session.setAttribute("orders", orderList);
		RequestDispatcher dispatcher = getServletConfig().getServletContext()
				.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
