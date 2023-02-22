package com.jooBang.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jooBang.project.model.RoomVO;
import com.jooBang.project.service.GecodeService;
import com.jooBang.project.service.RegistService;

@Controller
public class RegistController {
	@Autowired
	private RegistService registservice;
	@Autowired
	private GecodeService gecodeservice;
	
	@RequestMapping("/registForm")
	public String registForm() {
		return "/regist/registForm";
	}
	
	@RequestMapping("/regist")
	public String regist(@RequestParam("uploadFileMulti") ArrayList<MultipartFile> files, 
						 RoomVO vo, HttpServletRequest req, HttpSession session) throws IOException{
		
		// roomImage - 여러개 파일 저장
		String uploadPath = "file:////usr/local/project/product_images/image/";
		String imgUploadPath = uploadPath + "registImg/";
	
		String memId = (String)session.getAttribute("sid");
		
		String roomImage ="";
		
		// 여러 개의 파일 이름을 저장한 리스트 변수 생성
		ArrayList<String> originalFileNameList = new ArrayList<String>();
		
		for(MultipartFile file : files) {
			// 2. 원본 파일 이름 저장
			String originalFileName = file.getOriginalFilename();
			// 원본 파일 이름을 리스트에 저장
			originalFileNameList.add(originalFileName);
			
			// 3. 파일 이름이 중복되지 않도록 파일 이름 변경
			// 서버에 저장할 파일 이름 설정 : UUID 사용
			UUID uuid = UUID.randomUUID();
			String savedFileName = uuid.toString() + "_" + originalFileName;
			
			// 4. 파일 (객체) 생성
			File sendFile = new File(imgUploadPath + savedFileName);
			roomImage+=savedFileName+",";
			
			// 5. 서버로 전송
			file.transferTo(sendFile);
		}
		
		vo.setRoomImage(roomImage);
		HashMap<String, String> map = gecodeservice.geocode(vo.getRoomAddress1());
		
		vo.setLat(map.get("y"));
		vo.setLng(map.get("x"));

		vo.setMemId(memId);
		
		registservice.insertRoom(vo);
		
		
		return "redirect:/registForm";
	}
}