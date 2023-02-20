package com.jooBang.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.ReservationVO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.service.PayService;
import com.jooBang.project.service.RegistService;

@Controller
public class PayController {
	@Autowired
	private PayService service;
	@Autowired
	private RegistService roomservice;

	@RequestMapping("/payment/pay/{roomNo}")
	public String pay(HttpSession session,@PathVariable int roomNo,Model model) {
		String memId= (String)session.getAttribute("sid");
		RoomVO roomVO = roomservice.detailRoom(roomNo);
		MemberVO memVo = service.getMemberInfo(memId);
		model.addAttribute("memVo",memVo);
	    model.addAttribute("roomVo",roomVO);
		return"/payment/paymentView";
	}
	
	@RequestMapping("/payment/pay/payresult")
	public String payresult(ReservationVO vo, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		vo.setTenentId(memId);
		
		service.insertReservation(vo);
		
		return "redirect:/";
	}
	
}
