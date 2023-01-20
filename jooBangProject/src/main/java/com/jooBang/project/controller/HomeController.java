package com.jooBang.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	 public String mainView(Model model) {
		 return "main";
}
}
