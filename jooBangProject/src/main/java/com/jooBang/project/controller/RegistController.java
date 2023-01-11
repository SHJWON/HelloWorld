package com.jooBang.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistController {
	@RequestMapping("/registForm")
	public String registForm() {
		return "/regist/registForm";
	}
}