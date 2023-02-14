package com.jooBang.project.controller;

import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jooBang.project.model.EmailVO;
import com.jooBang.project.service.EmailService;

@Controller
public class EmailController {
	@Autowired
	private EmailService service;
	
	EmailVO vo = new EmailVO();
	
	@ResponseBody
	@RequestMapping("/authMailcheck")
	public String authMail(@RequestParam String email,
						   @RequestParam String memName) {
	
		Random random = new Random();
		int randNum = random.nextInt(888888) + 111111;
		String userEmailAuth = Integer.toString(randNum);
		
		vo.setMemName(memName);
		vo.setUserEmailAuth(userEmailAuth);
		service.updateEmailAuth(vo);
		
		String title="주식회사 쭈방 메일 인증코드입니다.";
		String body = "<br>" +
					  "인증 번호는 " + userEmailAuth + " 입니다 <br>" +
					  "해당 인증번호를 확인란에 기입해 주세요.";
		
		Map<String, Object> sendRs = service.send(email,title,body);
		return (String) sendRs.get("msg");
	}
	
	@ResponseBody
	@RequestMapping("/authNumCheck")
	public String authNumCheck(@RequestParam String authNum,
							   @RequestParam String memName) {
		String result = "";
		
		vo.setMemName(memName);
		
		if(service.getAuthNum(vo).equals(authNum)) {
			result = "success";
		} else {
			result = "fail";
		}
		
		return result;
	}
}