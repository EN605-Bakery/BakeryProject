package com.bakery.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bakery.model.Order;
import com.bakery.utils.DBUtils;
import com.bakery.utils.HTMLTableGenerate;

/**
 * Servlet implementation class OrderController
 */
@WebServlet(name = "Order", urlPatterns = { "/Order" })
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	  @Override
	  public void init(ServletConfig config) throws ServletException {
		  
		  super.init(config);
		  DBUtils.initDB();
	  }
	
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
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the Required Params
		ArrayList<Order> orderList = new ArrayList<Order>();
		HttpSession session = request.getSession();
		String[] quantity = request.getParameterValues("qty");
		String[] type = request.getParameterValues("type");
		String[] price = request.getParameterValues("typePrice");
		
		// Add the Parms to the List
		int i = 0;
                
                if (quantity != null) {
                    if (session.getAttribute("orders") != null) {
                        for (int j = 0; j < ((ArrayList<Order>) session.getAttribute("orders")).size(); j++) {
                            orderList.add(((ArrayList<Order>) session.getAttribute("orders")).get(j));
                        }
                    }
                    
                    
                    while (i < quantity.length) {
                            Order ordertoAdd = new Order();
                            ordertoAdd.setQuantity(Integer.parseInt(quantity[i]));
                            ordertoAdd.setPrice(price[i]);
                            ordertoAdd.setOrderType(type[i]);
                            orderList.add(ordertoAdd);
                            i++;
                    }
                    
                    double total = calculateTotalPrice(orderList);

                    String orderToDisplay = HTMLTableGenerate.getHtmlTable(orderList, total);

                    session.setAttribute("orderList", orderToDisplay);
                    session.setAttribute("orders", orderList);
                }
		RequestDispatcher dispatcher = getServletConfig().getServletContext()
				.getRequestDispatcher("/addToCart.jsp");
		dispatcher.forward(request, response);		
		
	}

	private double calculateTotalPrice(List<Order> orderList) {
		int qty;
		int priceTotal = 0; ;
		for(int i = 0; i < orderList.size(); i++ ) {
			qty = orderList.get(i).getQuantity();
			priceTotal += (Double.parseDouble(orderList.get(i).getPrice()) * qty);
		}
		return priceTotal;
	}

}
