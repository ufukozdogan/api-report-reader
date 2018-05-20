package com.ozdogan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/address")
public class AddressController {
	
	@GetMapping("/list")
	public String addressList(Model model) {
		model.addAttribute("addresses", "This is the address page!");
		return "/address/list";
	}
}
