package com.ozdogan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/transaction")
public class TransactionsController {
	
	@GetMapping("/list")
	public String userList(Model model) {
		model.addAttribute("transaction", "This is the transaction list page!");
		return "/transaction/list";
	}
	
	@GetMapping("/form")
	public String userForm(Model model) {
		model.addAttribute("transactionForm");
		return "/transaction/form";
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
