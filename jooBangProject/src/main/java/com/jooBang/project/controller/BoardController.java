package com.jooBang.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.BoardVO;
import com.jooBang.project.service.BoardService;





@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	@RequestMapping("///")
	 public String mapView() {	
		 return "/board/boardAllView";

}
	@RequestMapping("/board/boardCtgList/{ctgNo}") // /board/boardAllView
	public String boardCtgList(@PathVariable String ctgNo,String ctgName,Model model) {
		ArrayList<BoardVO>brdList=service.ctgListBoard(ctgNo,ctgName);
		model.addAttribute("brdList",brdList);
	return "/board/boardAllView";
	}
	@RequestMapping("/board/boardInsert")
	public String boardInsert() {
		return"/board/boardInsert";
	}
	@RequestMapping("/board/insertBoard")
	public String insertBoard(BoardVO brd) { // 커맨드 객체를 통해 자동으로 VO에 저장
		// 서비스를 통해서 DB에 저장
		service.insertBoard(brd);
		// DB 저장 후 전제 상품 조회 화면으로 포워딩  
		return "redirect:///"; // -> @RequestMapping("/product/productListAll")
	}

	
}
