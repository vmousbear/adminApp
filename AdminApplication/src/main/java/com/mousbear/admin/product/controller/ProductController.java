package com.mousbear.admin.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ProductController {
		
	
	@RequestMapping("/")
	 public ModelAndView showLogin() {
	   ModelAndView mav = new ModelAndView("view");
	   System.out.println("test");
	   return mav;
	 }
	
	@RequestMapping("/home")
	 public ModelAndView home() {
	   ModelAndView mav = new ModelAndView("dashboard");
	   System.out.println("test2");
	   return mav;
	 }
	
	@RequestMapping("/createCategory")
	 public ModelAndView createCategory() {
	   ModelAndView mav = new ModelAndView("category/createCategory");
	   System.out.println("test3");
	   return mav;
	 }
	
	@RequestMapping("/searchCategory")
	 public ModelAndView searchCategory() {
	   ModelAndView mav = new ModelAndView("category/searchCategory");
	   System.out.println("test4");
	   return mav;
	 }

}
