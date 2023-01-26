package com.jooBang.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.MapVO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.service.MapService;
import com.jooBang.project.service.RegistService;



@Controller
public class MapController {
	@Autowired
	private MapService mapservice;
	@Autowired
	private RegistService roomservice;
	
	@RequestMapping("map/mapView")
	 public String mapView(Model model) {
		 ArrayList<MapVO> mapList=mapservice.listAllMap();
		 model.addAttribute("mapList",mapList);
		 return "map/mapView";

}
	
	   @RequestMapping("/roominfo/{roomNo}")
	   public String roominfo(@PathVariable int roomNo, Model model){
		   RoomVO vo = roomservice.detailRoom(roomNo);
		   
		   model.addAttribute("room", vo);
		   
		   return "map/roomInfo";
	   }

}
