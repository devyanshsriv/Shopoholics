package com.website.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Backend.DAO.UserDAO;
import com.Backend.Model.User;

@Controller
public class LoginController {

	@Autowired
	UserDAO userDAO;


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		model.addObject("User", new User());
		if (error != null) {
			model.addObject("error", "Invalid username or password");

		}
		if (logout != null) {
			model.addObject("msg", "You've been successfully logged out");
		}
		model.setViewName("Login");
		return model;
	}

	@RequestMapping(value = "/login_success")
	public String loginSuccess(HttpSession session, Model m) {
		System.out.println("=========== Successful Login ===========");

		boolean loggedIn = true;
		// Retrieving the username
		String username = SecurityContextHolder.getContext().getAuthentication().getName();

		User user = userDAO.getUserByEmail(username);
		session.setAttribute("Username", username);
		session.setAttribute("LoggedIn", loggedIn);
		session.setAttribute("user", user);
		System.out.println();

		return "redirect:/";
	}
}
