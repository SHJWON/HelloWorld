package com.jooBang.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ChatbotController {
	
	@RequestMapping("/chatbotResult")
	public String chatbotResult(){
		return "chatbot_test";
	}

}