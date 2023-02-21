package com.jooBang.project.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jooBang.project.service.STTService;

@Controller
public class STTController {
	@Autowired
	private STTService sttService;
	
	@RequestMapping("/sttForm")
	public String sttForm() {
		return "/myPage/sttResult";
	}
	
	
	@ResponseBody
	@RequestMapping("/stt")
	public String stt(@RequestParam("uploadFile") MultipartFile file) throws IOException {
        
		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload
		// 마지막에 / 있어야 함
		//String uploadPath = "C:/springWorkspace/upload/";
		String uploadPath = "/usr/local/project/upload/";
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
		String filePathName = uploadPath + originalFileName;

		// 3. 파일 (객체) 생성
		File sendFile = new File(filePathName);

		// 4. 서버로 전송
		file.transferTo(sendFile);
		
		// OCR 서비스에서 결과 받음
		String result = sttService.stt(filePathName); // 매개변수 : String, return : String
		//String result="인천";
		return result;
	}

}
