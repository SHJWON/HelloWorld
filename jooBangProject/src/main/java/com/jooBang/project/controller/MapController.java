package com.jooBang.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jooBang.project.model.MapVO;
import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.model.WishListVO;
import com.jooBang.project.service.MapService;
import com.jooBang.project.service.MemberService;
import com.jooBang.project.service.RegistService;
import com.jooBang.project.service.WishListService;



@Controller
public class MapController {
	@Autowired
	private MapService mapservice;
	@Autowired
	private RegistService roomservice;
	@Autowired
	private WishListService wishservice;
	@Autowired
	private MemberService memservice;
	
	@RequestMapping("map/mapView")
	 public String mapView(Model model) {
		 ArrayList<MapVO> roomList=mapservice.listAllMap();
		 model.addAttribute("roomList",roomList);
		 return "map/mapView";

	}
	
	
	@RequestMapping("/roominfo/{roomNo}")
	public String roominfo(@PathVariable int roomNo, Model model ,HttpSession session){
		RoomVO roomVO = roomservice.detailRoom(roomNo);
		int wish_count = wishservice.wishcount(roomNo);
		String memId = (String)session.getAttribute("sid");
		WishListVO vo = new WishListVO();
		vo.setMemId(memId);
		vo.setRoomNo(roomNo);
		   
		roomservice.viewCount(roomNo); // 조회수 증가
		roomservice.wishCountroom(roomNo); // 조회수 증가
		
		model.addAttribute("wish_count", wish_count); // 찜수 조회
		model.addAttribute("room", roomVO); // room 정보 조회
		
		//최근 본 방 중복 데이터 제거
		wishservice.recentViewDelete(vo);
		
		//최근 본 방 저장
		wishservice.recentViewSave(memId, roomNo);
		model.addAttribute("roomNo", roomNo);
		   
		return "map/roomInfo";
	}
	
	@ResponseBody
	@RequestMapping("/wishList_check")
	public String wishList_check(@RequestParam HashMap<String, Object> param) {
		String result= wishservice.wishList_check(param);
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/insert_wishList")
	public int insert_wishList(@RequestParam HashMap<String, Object> param, Model model) {
		wishservice.insert_wishList(param);
		int roomNo = Integer.parseInt((String)param.get("roomNo"));
		int wish_count = wishservice.wishcount(roomNo);
		
		model.addAttribute("wish_count", wish_count);
		
		return wish_count;
	}
	
	@ResponseBody
	@RequestMapping("/delete_wishList")
	public int delete_wishList(@RequestParam HashMap<String, Object> param, Model model) {
		wishservice.delete_wishList(param);
		int roomNo = Integer.parseInt((String)param.get("roomNo"));
		
		int wish_count = wishservice.wishcount(roomNo);
		
		model.addAttribute("wish_count", wish_count);
		
		return wish_count;
	}

}
