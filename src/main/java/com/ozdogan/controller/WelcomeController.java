package com.ozdogan.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {
	
	@RequestMapping("/")
	public String welcome() {
		return "Welcome to the Spring Boot application!";
	}
}
