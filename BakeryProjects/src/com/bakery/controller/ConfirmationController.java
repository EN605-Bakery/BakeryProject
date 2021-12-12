package com.bakery.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bakery.model.Order;
import com.bakery.utils.DBUtils;

import java.util.ArrayList;

/**
 * Servlet implementation class PaymentsController
 */
@WebServlet(name = "Confirmation", urlPatterns = { "/Confirmation" })
public class ConfirmationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmationController() {
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
		// TODO Auto-generated method stub
                HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String cardType = request.getParameter("cardType");
		String ccNum = request.getParameter("CCNumber");
		String ccDate = request.getParameter("CCDate");
		ArrayList<Order> orderList = (ArrayList<Order>) session.getAttribute("orders");
		DBUtils.insertOrder(orderList, name, email, cardType, ccNum, ccDate);

		orderList = new ArrayList<Order>();
		String url = "/confirmation.jsp";
		session.setAttribute("orders", orderList);
                session.setAttribute("customerName", name);
                session.setAttribute("customerEmail", email);
                
		RequestDispatcher dispatcher = getServletConfig().getServletContext()
				.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
