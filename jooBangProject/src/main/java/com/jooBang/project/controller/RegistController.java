package com.jooBang.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.roomVO;
import com.jooBang.project.service.RegistService;

@Controller
public class RegistController {
	@Autowired
	private RegistService service;
	
	@RequestMapping("/registForm")
	public String registForm() {
		return "/regist/registForm";
	}
	
	@RequestMapping("/regist")
	public String regist(roomVO vo) {

		// roomNo 생성 - 랜덤 숫자
		long timeNum = System.currentTimeMillis();
		
		// 날짜 시간 포맷 : HH(24시간제)
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
		String strTime = fmt.format(new Date(timeNum));
		
		// 랜덤 숫자 4개 생성
		String rNum = "";
		for(int i=1; i<=4; i++)
			rNum+= (int)(Math.random()*10);
		
		String roomNo =strTime + "-" + rNum;
		// vo에 주문번호 저장
		vo.setRoomNo(roomNo);

		service.insertRoom(vo);
		
		return "redirect:/registForm";
	}
}