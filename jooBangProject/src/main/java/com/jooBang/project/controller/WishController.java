package com.jooBang.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WishController {
	
	@RequestMapping("/wishList/wishListView")
	public String wishListAll (Model model) {
		return "/wishList/wishListView";
	}
	
}
