package com.jooBang.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.FurnitureVO;
import com.jooBang.project.service.FurnitureService;


@Controller
public class FurnitureController {
	@Autowired
	FurnitureService service;
	
	/*가구 전체 페이지*/
	@RequestMapping("/furniture/furnitureRentalView")
	 public String FurnitureListAll(Model model) {
			ArrayList<FurnitureVO>prdList=service.listAllFurniture();
			model.addAttribute("prdList", prdList);
			return"furniture/furnitureRentalView";
		}

	 
		

}
