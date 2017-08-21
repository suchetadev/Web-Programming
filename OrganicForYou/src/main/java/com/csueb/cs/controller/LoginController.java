package com.csueb.cs.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.csueb.cs.bean.Product;
import com.csueb.cs.bean.User;
import com.csueb.cs.util.UserUtils;


@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(Locale locale, Model model) {
				
		return new ModelAndView("login","command", new User());
	}
	
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public String validate(@ModelAttribute("SpringWeb")User user, ModelMap model, HttpServletRequest request) {
			
		model.addAttribute("email",user.getEmail());
		model.addAttribute("password",user.getPassword());
		
		//check valid user
		boolean status = UserUtils.checkUser(user);
		
	
		//check for admin
		boolean is_admin = UserUtils.isAdmin(user.getEmail());
		
		
		
		//if user is valid
		if(status){
			request.getSession().setAttribute("authenticated", "enabled");
			List<Product> cart = new ArrayList<Product>();
			request.getSession().setAttribute("mycart", cart);
			
			if (is_admin) {
				request.getSession().setAttribute("admin", "enabled");
			}
			
			return "home";
		}
		else{
			
			model.addAttribute("message", "Invalid Login! Please enter correct email or password.");
			return "login";
		}
		
	}
}
