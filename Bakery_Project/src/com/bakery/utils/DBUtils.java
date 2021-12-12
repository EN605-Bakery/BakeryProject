package com.bakery.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bakery.model.Order;

public class DBUtils {

	private static final String[] sqlSetupDb = {
			
			"create table bakery.customer("
			+ "customer_id INT PRIMARY KEY, "
			+ "name VARCHAR(30) NOT NULL, "
			+ "email VARCHAR(30) NOT NULL, "
			+ "credit_type VARCHAR(20) NOT NULL, "
			+ "credit_card_number VARCHAR(20) NOT NULL, "
			+ "credit_card_expiration VARCHAR(10) NOT NULL)",
			
			"create table bakery.orders("
			+ "order_id INT PRIMARY KEY NOT NULL, "
			+ "customer_id INT, "
			+ "FOREIGN KEY(customer_id) REFERENCES bakery.customer)",
			
			"create table bakery.menu_item("
			+ "item_name VARCHAR(20) PRIMARY KEY NOT NULL, "
			+ "price INT NOT NULL)",
			
			"create table bakery.order_to_menu_item("
			+ "order_id INT NOT NULL, "
			+ "quantity INT NOT NULL, "
			+ "menu_item VARCHAR(20) NOT NULL, "
			+ "FOREIGN KEY(order_id) REFERENCES bakery.orders(order_id), "
			+ "FOREIGN KEY(menu_item) REFERENCES bakery.menu_item(item_name))",
			
			"insert into bakery.menu_item(item_name, price) values('AssortedCupCakes', 18)",
			"insert into bakery.menu_item(item_name, price) values('AssortedCookie', 15)",
			"insert into bakery.menu_item(item_name, price) values('BreadLoaves', 16)",
			"insert into bakery.menu_item(item_name, price) values('PoundCake', 16)"};
			
	private static final String DB_NAME = "/usr/local/tomcat/webapps/apyryt2/BakeryProject";
	 
			
	public static void initDB() {
		  Connection connection = null;
		  Statement statement = null;
		  try {
		      Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		      String dbURL = "jdbc:derby:" + DB_NAME + ";create=true";
		      String username = "";
		      String password = "";
		          
		      connection = DriverManager.getConnection(
		              dbURL, username, password);
		      // create a statement
		      statement = connection.createStatement();
		          
		      for (String s : sqlSetupDb) {
		      	int resultSet = statement.executeUpdate(s);
		      }
		      statement.close();
		      connection.close(); 
		      
		  } catch (ClassNotFoundException e) {
				// just move on
		  } catch (SQLException e) {
				// just move on
		} finally {
			  try {
				  statement.close();
				  connection.close();
			} catch (SQLException e) {
				// just move on if we can't close
			}
		  }
	}
	
	public static void insertOrder(ArrayList<Order> orders, String name, String email, String cardType, String ccNumber, String ccDate) {
	    // Insert/ Update the DB with the registration info 
        Connection connection = null;
        Statement statement = null;
        int userId = 0;
        
        try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		
	        String dbURL = "jdbc:derby:" + DB_NAME;
	        String username = "";
	        String password = "	";
	            
	        connection = DriverManager.getConnection(
	                dbURL, username, password);
	        // create a statement
	        statement = connection.createStatement();
        	
        	// customer info //
        	
	        // check if a user with that email already exists
	        String checkExist = "select customer_id from bakery.customer where email = '" + email + "'";
	        ResultSet result = statement.executeQuery(checkExist);
	        int customerId;
    		// if not exist, create
	        if (!result.next()) {
		        // get the max order number in order to create the next number
	        	String getCustomerId = "select MAX(customer_id) from bakery.customer";
	        	result = statement.executeQuery(getCustomerId);
	        	customerId = 0;
	        	if (result.next()) {
	        		customerId = result.getInt(1) + 1;
	        	}
	        	String newCustomer = "insert into bakery.customer(customer_id, name, email, credit_type, credit_card_number, credit_card_expiration) "
	        			+ "values(" + customerId + ", '" + name + "', '" + email + "', '" + cardType + "', '" + ccNumber + "', '" + ccDate + "')";
	        	int r = statement.executeUpdate(newCustomer);
	        }
	        else {
	        	customerId = result.getInt(1);
	        }
	        
	        
	        // order info //
	        
	        // get the max order number in order to create the next number
        	String getOrderId = "select MAX(order_id) from bakery.orders";
        	result = statement.executeQuery(getOrderId);
        	
        	int orderId = 0;
        	if (result.next()) {
        		orderId = result.getInt(1) + 1;
        	}
        	String newOrder = "insert into bakery.orders(order_id, customer_id) values(" + orderId + ", " + customerId + ")";
        	int r = statement.executeUpdate(newOrder);
        	
        	// insert each item into the order
        	for (Order o : orders) {
        		String newItem = "insert into bakery.order_to_menu_item(order_id, quantity, menu_item) values(" + orderId + ", " + o.getQuantity() + ", '" + o.getOrderType() + "')";
        		r = statement.executeUpdate(newItem);
        		System.out.println(o.getOrderType());
        	}
        	
        	System.out.println(customerId);
        	
        }
        catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        finally {
	        try {		        	
				statement.close();
				connection.close();
			} catch (Exception e) {
				// move on if we can't close
			}
        }
	}
}