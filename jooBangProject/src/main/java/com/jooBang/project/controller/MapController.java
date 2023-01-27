package com.jooBang.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jooBang.project.model.MapVO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.service.MapService;
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
	
	@RequestMapping("map/mapView")
	 public String mapView(Model model) {
		 ArrayList<MapVO> roomList=mapservice.listAllMap();
		 model.addAttribute("roomList",roomList);
		 return "map/mapView";

	}
	
	
	@RequestMapping("/roominfo/{roomNo}")
	public String roominfo(@PathVariable int roomNo, Model model){
		RoomVO vo = roomservice.detailRoom(roomNo);
		int wish_count = wishservice.count(roomNo);
		   
		model.addAttribute("wish_count", wish_count);
		model.addAttribute("room", vo);
		   
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
		int wish_count = wishservice.count(roomNo);
		
		model.addAttribute("wish_count", wish_count);
		
		return wish_count;
	}
	
	@ResponseBody
	@RequestMapping("/delete_wishList")
	public int delete_wishList(@RequestParam HashMap<String, Object> param, Model model) {
		wishservice.delete_wishList(param);
		int roomNo = Integer.parseInt((String)param.get("roomNo"));
		
		int wish_count = wishservice.count(roomNo);
		
		model.addAttribute("wish_count", wish_count);
		
		return wish_count;
	}

}
