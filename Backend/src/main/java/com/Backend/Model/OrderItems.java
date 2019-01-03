package com.Backend.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class OrderItems implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int orderItemsid;

	@OneToOne
	private Product product;
	
	@ManyToOne
	@JoinColumn(name="id", nullable=false)
	private OrderTable order1;
	@Column(name = "order_id")

	private int orderId;

	@Column(name = "product_count")
	private int productCount;

	private double total;

	@Column(name = "buying_price")
	private double buyingPrice;

	public int getOrderItemsid() {
		return orderItemsid;
	}

	public void setOrderItemsid(int orderItemsid) {
		this.orderItemsid = orderItemsid;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public OrderTable getOrder1() {
		return order1;
	}

	public void setOrder1(OrderTable order1) {
		this.order1 = order1;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getBuyingPrice() {
		return buyingPrice;
	}

	public void setBuyingPrice(double buyingPrice) {
		this.buyingPrice = buyingPrice;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
