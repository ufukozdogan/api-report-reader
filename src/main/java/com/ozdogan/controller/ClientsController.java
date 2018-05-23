package com.ozdogan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/clients")
public class ClientsController {
	
	@GetMapping("/list")
	public String addressList(Model model) {
		model.addAttribute("clients", "This is the clients information page!");
		return "/clients/list";
	}
}
