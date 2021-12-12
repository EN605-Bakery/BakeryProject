package com.bakery.utils;

import java.util.List;

import com.bakery.model.Order;
import java.text.DecimalFormat;

public class HTMLTableGenerate {
	
	public static String getHtmlTable(List<Order> orderList, double total) {

		StringBuilder htmlTable = new StringBuilder();
                DecimalFormat df = new DecimalFormat("$0.00");
	//	ResultSetMetaData metaData = results.getMetaData();

		htmlTable.append("<table>");

		// add header row
		htmlTable.append("<tr>");
		htmlTable.append("<th>");
		htmlTable.append("Type");
		htmlTable.append("</th>");
		htmlTable.append("<th>");
		htmlTable.append("Quantity");
		htmlTable.append("</th>");
		htmlTable.append("<th>");
		htmlTable.append("Price");
		htmlTable.append("</th>");
		htmlTable.append("</tr>");

		// add all other rows
			for (int i = 0; i < orderList.size() ; i++) {
				htmlTable.append("<tr>");
					htmlTable.append("<td>");
					htmlTable.append(orderList.get(i).getOrderType());
					htmlTable.append("</td>");
					htmlTable.append("<td>");
					htmlTable.append(orderList.get(i).getQuantity());
					htmlTable.append("</td>");
					htmlTable.append("<td>");
					htmlTable.append(orderList.get(i).getPrice());
					htmlTable.append("</td>");
					htmlTable.append("<td>");
					htmlTable.append("<form action=\"Remove\" method=\"post\">");
					htmlTable.append("<input type=\"hidden\" name=\"orderToRemove\" value="+orderList.get(i).getOrderType()+">");
					htmlTable.append("<input type=\"submit\" name=\"action\" value=\"Remove\">");
					htmlTable.append("</form>");	
					htmlTable.append("</td>");
				htmlTable.append("</tr>");
			 
			}
		
		htmlTable.append("<tr>");
		htmlTable.append("<td align = \"right\">");
		htmlTable.append("Total Cost");
		htmlTable.append("</td>");
		htmlTable.append("<td align = \"right\">");
		htmlTable.append(df.format(total));
		htmlTable.append("</td>");
		htmlTable.append("<tr>");
		
		htmlTable.append("</table>");
		return htmlTable.toString();
	}

}
