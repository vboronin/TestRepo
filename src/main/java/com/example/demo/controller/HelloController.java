package com.example.demo.controller;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class HelloController {

	@GetMapping("/public/hello")
	public String publicHello() {
		return "Hello, public!";
	}

	@GetMapping("/api/hello")
	public String securedHello(Authentication authentication) {
		String username = authentication != null ? authentication.getName() : "anonymous";
		return "Hello, " + username + "!";
	}
}