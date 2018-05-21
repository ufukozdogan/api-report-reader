package com.ozdogan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/list")
	public String userList(Model model) {
		model.addAttribute("users", "This is the user page!");
		return "/user/list";
	}
	
	@GetMapping("/form")
	public String userForm(Model model) {
		model.addAttribute("userForm");
		return "/user/form";
	}
	
	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
		if(error!=null) {
			model.addAttribute("error", "Incorrect username or password");
		}
		if(logout!=null) {
			model.addAttribute("message", "You have been logged out succesfully");
			
		}
		return "login";
	}
}
