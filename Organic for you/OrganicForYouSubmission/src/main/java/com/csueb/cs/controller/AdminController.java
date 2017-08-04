package com.csueb.cs.controller;


import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.csueb.cs.bean.Product;
import com.csueb.cs.bean.User;

import com.csueb.cs.util.ProductUtils;
import com.csueb.cs.util.UserUtils;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
				
		return "admin";
	}
	
	//add user
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String addUser(Locale locale, Model model) {
				
		return "addUser";
	}
	
	//view user
	@RequestMapping(value = "/viewUsers", method = RequestMethod.GET)
	public String viewUsers(Locale locale, Model model) {
				
		List<User> user = UserUtils.getUsers();
		model.addAttribute("users",user);
		
		return "viewUsers";
	}
	
	//edit user
	@RequestMapping(value = "/editUser/{user_id}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable int user_id,Model model){  
        
		User user = UserUtils.getUserById(user_id);         
		return new ModelAndView("userEditForm","command",user);
		
    }
 
	//save edit user
	 @RequestMapping(value="/editSave",method = RequestMethod.POST)  
	    public ModelAndView editsave(HttpServletRequest request, HttpServletResponse response, Model model){  
		 	
		 User u = new User();
		 u.setFirstName(request.getParameter("firstName"));
		 u.setLastName(request.getParameter("lastName"));
		 u.setEmail(request.getParameter("email"));
		 u.setPhoneNumber(request.getParameter("phoneNumber"));
		 u.setPassword(request.getParameter("password"));
		 u.setPasswordConfirm(request.getParameter("passwordConfirm"));
		 u.setRole(request.getParameter("role"));
		 u.setUser_id(Integer.parseInt(request.getParameter("user_id")));
			
	     UserUtils.update(u);  
	     return new ModelAndView("redirect:/viewUsers");  
	 }  
	 
	//delete user
	 @RequestMapping(value = "/deleteUser/{user_id}", method = RequestMethod.GET)
		public ModelAndView deleteUser(@PathVariable int user_id,Model model){  
	        
			UserUtils.delete(user_id);         
			return new ModelAndView("redirect:/viewUsers");  
			
	    }
	
	//add product
	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String addProduct(Locale locale, Model model) {
				
		return "addProduct";
	}
	
	@RequestMapping(value = "/addProductToDb", method = RequestMethod.POST)
	public String registrationConfirm(HttpServletRequest request, HttpServletResponse response, Model model ) {

		Product p = new Product();
		
		p.setProductType(request.getParameter("productType"));
		p.setProductName(request.getParameter("productName"));
		p.setProductCost(Float.parseFloat(request.getParameter("productCost")));
		p.setProductOldCost(Float.parseFloat(request.getParameter("productOldCost")));
		p.setProductQuantity(Integer.parseInt(request.getParameter("productQuantity")));
		p.setProductUnit(request.getParameter("productUnit"));
		
		
		//insert into database
		ProductUtils.create(p);
		
	    return "admin";
	   
	}
	
	//view product
	@RequestMapping(value = "/viewProducts", method = RequestMethod.GET)
	public String viewProducts(Locale locale, Model model) {
				
		return "viewProducts";
	}
	

}
