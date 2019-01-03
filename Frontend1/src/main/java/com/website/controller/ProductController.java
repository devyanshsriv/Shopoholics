package com.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Backend.DAO.CategoryDAO;
import com.Backend.DAO.ProductDAO;
import com.Backend.Model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/new")
	public String New() {
		return "new";
	}
	
	@RequestMapping("/ViewProduct")
	public String ViewProducts(Model model) {

		model.addAttribute("prodlist", productDAO.getAllProduct());

		return "ViewProduct";
	}
	
	@RequestMapping("viewProduct/{prodid}")
	public String ViewSingleProduct(@PathVariable("prodid") int prodid, Model model) {

		Product product = productDAO.getSingleProduct(prodid);
		model.addAttribute("product", product);
		model.addAttribute("category", categoryDAO.getSingleCategory(Integer.parseInt(product.getCategoryid())));
		return "SingleProduct";
	}

}
