package com.jooBang.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.RoomVO;
import com.jooBang.project.model.WishListVO;
import com.jooBang.project.service.WishListService;

@Controller
public class WishController {
	@Autowired
	WishListService service;
	
	//내가 본 방 View
	@RequestMapping("/wishList/wishListView")
	public String wishListAll (Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");		
		ArrayList<WishListVO> recentList = service.recentList(memId);
		model.addAttribute("recentList", recentList);
		return "/wishList/wishListView";
	}
	
	//찜 목록 View	
	@RequestMapping("/wishList/wishLikeView")
	public String wishLikeList (Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");		
		ArrayList<WishListVO> likeList = service.likeView(memId);
		model.addAttribute("likeList", likeList);
		return "/wishList/wishLikeView";
	}
	
	//방 비교하기 View	
	@RequestMapping("/wishList/wishCompareView")
	public String wishCompareList (Model model) {
		return "/wishList/wishCompareView";
	}
	
	/*찜목록 페이징*/
	@RequestMapping("/wishList/wishListView/{num}")
	public String WishListPG(Model model,@PathVariable int num) {
		 int count = service.count();
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 8;
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		 // 출력할 게시물
		 int displayPost = (num - 1) * postNum;
		ArrayList<RoomVO>roomList=null;
		roomList=service.listPage(displayPost, postNum);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("roomList",roomList);
		model.addAttribute("roomTitle", "전체글보기");
		return"/wishList/wishListView/";
	}
	
}
