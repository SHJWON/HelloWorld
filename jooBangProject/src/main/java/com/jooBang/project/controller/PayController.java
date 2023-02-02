package com.jooBang.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.service.PayService;

@Controller
public class PayController {
	@Autowired
	private PayService service;
	
	@RequestMapping("/payment/pay")
	public String pay(HttpSession session,Model model) {
		String memId= (String)session.getAttribute("sid");
		MemberVO memVo = service.getMemberInfo(memId);
		model.addAttribute("memVo",memVo);
		return"/payment/paymentView";
	}
}
