package com.jooBang.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jooBang.project.model.BoardVO;
import com.jooBang.project.model.FurnitureVO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.model.WishListVO;
import com.jooBang.project.service.BoardService;
import com.jooBang.project.service.FurnitureService;
import com.jooBang.project.service.RegistService;
import com.jooBang.project.service.WishListService;

@Controller
public class HomeController {
//  가구렌탈 서비스
	@Autowired
	FurnitureService fService;

//  커뮤니티 서비스
	@Autowired
	BoardService bService;
	
//  룸 서비스
	@Autowired
	RegistService rService;
	
//  찜 서비스
	@Autowired
	WishListService wService;

	@RequestMapping("/")
	public String mainView(Model model) {
		//가구렌탈 최신순으로 5개만 불러오는 메소드
		ArrayList<FurnitureVO> fRecentView = fService.fRecentView();
		model.addAttribute("fRecentView", fRecentView);
		
		//커뮤니티 최신순 5개 불러오기
		ArrayList<BoardVO> bRecentView = bService.bRecentView();
		model.addAttribute("bRecentView", bRecentView);
		
		//최신 방목록 8개 불러오기
		ArrayList<RoomVO> rRecentView = rService.rRecentView();
		model.addAttribute("rRecentView", rRecentView);
		
		//hotClick 3개 불러오기
		ArrayList<RoomVO> hotView = wService.hotClickView();
		model.addAttribute("hotView", hotView);
		
		//recommend 3개 불러오기
     	ArrayList<RoomVO> recommendView = wService.recommendView();
		model.addAttribute("recommendView", recommendView);
		
		return "main";
	}

	

	@RequestMapping("/404")
	public String error() {
		return "404";
	}
	
	
	// 메인 서칭 컨트롤러
	@RequestMapping("/main")
	public String cardListSearch(@RequestParam String keyword,
													   Model model){
	// 서비스로 전송해서 DB 검색 결과 받아옴
	ArrayList<WishListVO> searchRoom = wService.roomSearch(keyword);
	model.addAttribute("searchRoom", searchRoom);
	return "map/mapView";
		}
}
