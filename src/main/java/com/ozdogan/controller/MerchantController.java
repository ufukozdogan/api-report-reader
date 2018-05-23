package com.ozdogan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
	
	@GetMapping("/login")
	public String addressList(Model model) {
		return "/merchant/login";
	}
}