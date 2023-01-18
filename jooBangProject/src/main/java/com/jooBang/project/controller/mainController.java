package com.jooBang.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class mainController {
	/*서브메뉴 매핑*/
	
	@RequestMapping("/map/mapView")
	 public String mapView(Model model) {
		 return "/map/mapView";
	}
	
	@RequestMapping("/wishList/wishListView")
	 public String wishListView(Model model) {
		 return "/wishList/wishListView";
	}
	
	@RequestMapping("/regist/registForm")
	 public String registView(Model model) {
		 return "/regist/registForm";
	}
	
	@RequestMapping("/board/boardAllView")
	 public String boardView(Model model) {
		 return "/board/boardAllView";
	}
	
	@RequestMapping("/furniture/furnitureRentalView")
	 public String furnitrueView(Model model) {
		 return "/furniture/furnitureRentalView";
	}
	

}
