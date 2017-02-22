package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SuppilerDAO;


@Controller
public class HomeController 
{

	
	
	
	
	
	
	@RequestMapping("/")
	
 public String homePage()
 {
		
	 return "home";
 }
//
//	@RequestMapping("/login")
//	public ModelAndView showLoginPage()
//	{
//		ModelAndView mv=new ModelAndView("login");
//		mv.addObject("msg", "you clicked on login");
//		mv.addObject("showloginpage", "true");
//		return mv;
//		
//      }
//	
//	@RequestMapping("/register")
//public ModelAndView  showRegistrationPage()
//{
//	ModelAndView mv=new ModelAndView("registration");
//	mv.addObject("msg", "you clicked registration");
//	mv.addObject("showregistrationpage","true");
//	return mv;
//}
	@RequestMapping("/contactus")
	public ModelAndView  showcontactusPage()
	{
		ModelAndView mv=new ModelAndView("contactus");
		mv.addObject("msg", "you can fill the form");
		mv.addObject("showcontactuspage","true");
		return mv;
	}
	@RequestMapping("/home")
	public ModelAndView  showhomePage()
	{
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	

}
