package com.csueb.cs.controller;


import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.csueb.cs.bean.User;
import com.csueb.cs.util.MailUtils;
import com.csueb.cs.util.UserUtils;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Locale locale, Model model) {

		return "registration";
		
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String registrationConfirm(HttpServletRequest request, HttpServletResponse response, Model model ) {

		User u = new User();
		u.setFirstName(request.getParameter("firstName"));
		u.setLastName(request.getParameter("lastName"));
		u.setEmail(request.getParameter("email"));
		u.setPhoneNumber(request.getParameter("phoneNumber"));
		u.setPassword(request.getParameter("password"));
		u.setPasswordConfirm(request.getParameter("passwordConfirm"));
		
		
		if (request.getParameter("role") != null && !request.getParameter("role").isEmpty()) {
			u.setRole(request.getParameter("role"));
		} else {
			u.setRole("ROLE_USER");
		}
		
		String referer = request.getHeader("referer");
		System.out.println("-------------------------referer"+referer);
		
		
		
		//insert into database
		UserUtils.create(u);
		
		//add values to the model
		model.addAttribute("firstName",u.getFirstName());
		model.addAttribute("lastName", u.getLastName());
		model.addAttribute("email", u.getEmail());
		model.addAttribute("phoneNumber", u.getPhoneNumber());
		
		//send email to the user
		ApplicationContext context =
	             new ClassPathXmlApplicationContext("SpringMail.xml");

	    	MailUtils mm = (MailUtils) context.getBean("mailUtils");
	        mm.sendMail("rohantest99@gmail.com",
	    		   "rohantest99@gmail.com",
	    		   "Testing123",
	    		   "Testing only \n\n Hello Spring Email Sender");
	     
	     if (referer.contains("addUser")) {
	    	 return "admin";
	     } else {
	    	 return "registrationConfirm";
	     }
	}
}
