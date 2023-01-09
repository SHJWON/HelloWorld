package com.jooBang.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeContorller {
	@RequestMapping("/")
	public String index() {

		return "main";
	}

}
