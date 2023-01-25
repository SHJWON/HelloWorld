package com.jooBang.project.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String regist(@RequestParam("uploadFileMulti") ArrayList<MultipartFile> files, 
						 roomVO vo, HttpServletRequest req) throws IOException{

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
		
		
		// roomImage - 여러개 파일 저장
		String uploadPath = req.getSession().getServletContext().getRealPath("/").replace("webapp","resources");
		String imgUploadPath = uploadPath + File.separator + "static/image/registImg/";
		
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
		
		service.insertRoom(vo);
		
		
		
		return "redirect:/registForm";
	}
}