package com.website.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Backend.DAO.CartDAO;
import com.Backend.DAO.UserDAO;
import com.Backend.Model.Cart;
import com.Backend.Model.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping("/login")
	public String home() {
		return "Login";
	}
	
	@RequestMapping("/Register")
	public String Register(Model model) {

		model.addAttribute("user", new User	());
		return "UserRegister";
	}
	
	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String regUser(@ModelAttribute("user") User user, Model model, HttpServletRequest request) {

		/*System.out.println("Cart id------>" + cart.getCartid());*/

		user.setRole("ROLE_USER");
		user.setEnable(true);
		userDAO.addUser(user);
		Cart cart =  new Cart();

		cart.setEmail(user.getEmail());
		cartDAO.addCart(cart);
		return "index";
	}
	
	@RequestMapping("/Showall")
	public String showall(Model model) {
		List<User> lst = userDAO.getAllUSer();
		model.addAttribute("listUSer", lst);
		if (lst == null) {
			System.out.println("Null");
		}
		return "ShowAllUser";
	}
	
	@RequestMapping("/edituser/{userid}")
	public String goToEdit(@PathVariable("userid") int userid, Model model) {
		User obj = userDAO.getSingleUser(userid);
		model.addAttribute("user", obj);
		return "edituser";
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("user") User user, Model model) {
		userDAO.updateUser(user);
		return "redirect:/user/ShowAllUser";
	}
	
	@RequestMapping(value = "/deleteUser/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		userDAO.deleteUser(userid);
		return "redirect:/user/ShowAllUser";
	}

}
