package com.jooBang.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.MapVO;
import com.jooBang.project.service.MapService;


@Controller
public class HomeContorller {
	@Autowired
	private MapService service;
	
	@RequestMapping("/")
	 public String mapView(Model model) {
		 ArrayList<MapVO> mapList=service.listAllMap();
		 model.addAttribute("mapList",mapList);
		 return "map/mapView";

}
}
