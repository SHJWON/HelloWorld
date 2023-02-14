package com.jooBang.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jooBang.project.service.PapagoService;

@Controller
public class PapagoController {
	@Autowired
	private PapagoService PService;
	
	@RequestMapping("/plus")
	public String koa( ) {
		
		return "/plus";
	}
	@ResponseBody
	@RequestMapping("/papago/en")
	public String en(@RequestParam("test") String test,Model model ) {
		String html=test;
		String result=PService.translateToEngHtml(html);
	
		return result;
	}
	@ResponseBody
	@RequestMapping("/papago/ko")
	public String ko(@RequestParam("test") String test,Model model ) {
		String html=test;
		String result=PService.translateToKoHtml(html);
	
		return result;
	}
	
}
