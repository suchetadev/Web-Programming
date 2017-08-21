package com.csueb.cs.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.csueb.cs.bean.Product;
import com.csueb.cs.util.ProductUtils;


@Controller
//@SessionAttributes({"cart"})
public class PurchaseController {

	@RequestMapping(value = "/purchase", method = RequestMethod.GET)
	public String registration(Locale locale, Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("authenticated") != "enabled") {
			return "login";
		}
			
		List<Product> product = ProductUtils.getProducts();
		model.addAttribute("products",product);
		model.addAttribute("product_type","All");
		
		
		return "purchase";
		
	}
	@RequestMapping(value ="/vegetable", method = RequestMethod.GET)
	public String vegetable(Locale locale, Model model) {
		
		
		List<Product> product = ProductUtils.getProducts();
		model.addAttribute("products",product);
		model.addAttribute("product_type","Vegetable");
		
		return "purchase";
	}
	@RequestMapping(value ="/fruit", method = RequestMethod.GET)
	public String fruit(Locale locale, Model model) {
			
		List<Product> product = ProductUtils.getProducts();
		model.addAttribute("products",product);
		model.addAttribute("product_type","Fruits");
     
		return "purchase";
	}
	@RequestMapping(value ="/oil", method = RequestMethod.GET)
	public String oil(Locale locale, Model model) {
			
		List<Product> product = ProductUtils.getProducts();
		model.addAttribute("products",product);
		model.addAttribute("product_type","Oil");
     
		return "purchase";
	}
	
	@RequestMapping(value = "/viewCart", method = RequestMethod.GET)
	public String viewCart(Locale locale, Model model, HttpServletRequest request) {
		
		if (request.getSession().getAttribute("authenticated") != "enabled") {
			return "login";
		}
		
		return "viewCart";
	}
	
	 @RequestMapping(value = "/addToCart/{productId}", method = RequestMethod.GET)
	  public String addToCart(@PathVariable int productId, HttpServletRequest request) {
		
		System.out.println("productId : " + productId);
		Product product = ProductUtils.getProductById(productId);
		
		@SuppressWarnings("unchecked")
		List<Product> local_cart = new ArrayList<Product>();
		local_cart = (List<Product>)request.getSession().getAttribute("mycart");
	  	local_cart.add(product);
		request.getSession().setAttribute("mycart", local_cart);
		
		return "redirect:/purchase";
	  }
	
	
}
