package com.jooBang.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jooBang.project.service.ChatbotService;

@RestController
public class ChatbotRestController {
	@Autowired
	private ChatbotService service;
	
	@RequestMapping("/chatbot")
	public String chatbot(@RequestParam("message") String message ) {
		return service.main(message);
	}
}