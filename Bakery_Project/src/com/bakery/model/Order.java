/**
 * 
 */
package com.bakery.model;

/**
 * @author Shoaib Khan
 *
 */
public class Order {
	
	private int quantity;
	private String price;
	private String orderType;
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getPrice() {
		return price;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getOrderType() {
		return orderType;
	}
	
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
}
