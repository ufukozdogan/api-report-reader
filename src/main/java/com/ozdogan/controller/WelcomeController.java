package com.ozdogan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("heading", "Welcome to the Spring Boot application!");
		model.addAttribute("description", "This application is super good!");
		return "welcome";
	}
}
