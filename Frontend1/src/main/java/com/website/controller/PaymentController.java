package com.website.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Backend.DAO.CartDAO;
import com.Backend.DAO.OrderDAO;
import com.Backend.DAO.UserDAO;
import com.Backend.Model.Cart;
import com.Backend.Model.CartLine;
import com.Backend.Model.OrderItems;
import com.Backend.Model.OrderTable;
import com.Backend.Model.User;

@Controller
public class PaymentController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping(value = "/billing", method = RequestMethod.POST)
	public String updateuser(@ModelAttribute("user") User User, Model model) {
		userDAO.updateUser(User);
		System.out.println(User.getEmail());

		model.addAttribute("grandTotal", cartDAO.getByEmailid(User.getEmail()).getGrandTotal());
		return "payment";
	}
	
	@RequestMapping(value = "/pay", method = RequestMethod.POST)
	public String pay(@ModelAttribute("user") User User, Model model) {
		return "redirect:/checkout";
	}
	
	@RequestMapping("/checkout")
	public String checkout(Model model, HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		User user=userDAO.getUserByEmail(email);
		if(user==null) {
			return "redirect:/login";
		}

		Cart cart = cartDAO.getByEmailid(email);
		
		//add order
		OrderTable order=new OrderTable();
		order.setName(user.getName());
		order.setAddress(user.getAddress());
		order.setEmail(user.getEmail());
		order.setOrderitems(new ArrayList<OrderItems>());
		orderDAO.addOrder(order);
		
		//add order item
		OrderItems orderItem=new OrderItems();
		List<CartLine> list=cartDAO.list(cart.getCartid());
		OrderTable orderTable=orderDAO.getOrderByEmail(user.getEmail());
		
		for(CartLine cartLine:list) {
			orderItem.setBuyingPrice(cartLine.getBuyingPrice());
			orderItem.setTotal(cartLine.getTotal());
			orderItem.setProduct(cartLine.getProduct());
			orderItem.setOrder1(orderTable);
			orderItem.setProductCount(cartLine.getProductCount());
			
			orderDAO.addOrderItem(orderItem);
			cartDAO.remove(cartLine);
		}
		orderTable.setOrderitems(orderDAO.getOrderItemListByOrder(orderTable));
		orderDAO.updateOrder(orderTable);
		model.addAttribute("total", cart.getGrandTotal());
		model.addAttribute("cartlist", orderTable.getOrderitems());
		
		cart.setGrandTotal(0);
		cart.setCartLines(0);
		session.setAttribute("size", 0);
		cartDAO.updateCart(cart);
		
		return "checkout";
	}

	@RequestMapping("/continueShopping")
	public String ContShop() {
		return "index";
	}

}
