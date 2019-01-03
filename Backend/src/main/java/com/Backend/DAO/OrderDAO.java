package com.Backend.DAO;

import java.util.List;

import com.Backend.Model.OrderItems;
import com.Backend.Model.OrderTable;

public interface OrderDAO {

	// To add order details
	public boolean addOrder(OrderTable order);

	public boolean updateOrder(OrderTable order);

	public OrderTable getOrderByEmail(String email);

	// To add single orderItem
	public boolean addOrderItem(OrderItems orderItems);

	public List<OrderItems> getAllOrderItemsByEmail(String email);

	public List<OrderItems> getOrderItemListByOrder(OrderTable orderTable);

}
