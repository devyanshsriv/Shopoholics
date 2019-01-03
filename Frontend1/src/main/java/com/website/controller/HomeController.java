package com.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/mens")
	public String mens() {
		return "Mens";
	}
	
	@RequestMapping("/womens")
	public String womens() {
		return "Womens";
	}
}
