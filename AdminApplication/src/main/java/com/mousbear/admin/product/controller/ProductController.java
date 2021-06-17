package com.mousbear.admin.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ProductController {
		
	
	@RequestMapping("/")
	 public ModelAndView showLogin() {
	   ModelAndView mav = new ModelAndView("view");
	   return mav;
	 }

}
