package com.jooBang.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jooBang.project.model.MapVO;
import com.jooBang.project.service.MapService;



@Controller
public class MapController {
	@Autowired
	private MapService service;
	
	@RequestMapping("map/mapView")
	 public String mapView(Model model) {
		 ArrayList<MapVO> mapList=service.listAllMap();
		 model.addAttribute("mapList",mapList);
		 return "map/mapView";

}
	
	   @RequestMapping("/roominfo")
	   public String roominfo(@RequestParam HashMap<String,Object>param,Model model){
		  // ArrayList<MapVO>mapList=service.roomInfo(param);	
		   model.addAttribute("roomNo",param.get("roomNo"));
		   model.addAttribute("roomWeekPrice",param.get("roomWeekPirce"));
		   return "map/roomInfo";
		   
	   }

}
