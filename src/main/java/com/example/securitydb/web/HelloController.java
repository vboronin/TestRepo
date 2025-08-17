package com.example.securitydb.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloController {

	@GetMapping("/public")
	public String publicHello() {
		return "Hello, world (public)";
	}

	@GetMapping("/user")
	public String userHello() {
		return "Hello, user";
	}

	@GetMapping("/admin/secret")
	public String adminHello() {
		return "Hello, admin";
	}
}