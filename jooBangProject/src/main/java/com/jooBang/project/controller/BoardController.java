package com.jooBang.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jooBang.project.model.BoardVO;
import com.jooBang.project.model.CommentVO;
import com.jooBang.project.service.BoardService;
import com.jooBang.project.service.CommentService;



@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	@Autowired
	private CommentService comService;


	@RequestMapping("///")
	 public String mapView() {	
		 return "/board/boardAllView";

}
	
	@RequestMapping("/board/boardListAll")
	public String boardListAll(Model model) {    
		 ArrayList<BoardVO>brdList=service.listAllBoard(); 
		model.addAttribute("brdList",brdList);
		model.addAttribute("brdTitle","전체글보기");
		return"/board/boardAllView";
	}
	
	@RequestMapping("/board/boardCtgList/{ctgNo}") // /board/boardAllView
	public String boardCtgList(@PathVariable String ctgNo,Model model) {
		ArrayList<BoardVO>brdList=service.ctgListBoard(ctgNo);
		model.addAttribute("brdTitle","");
		model.addAttribute("brdList",brdList);
		model.addAttribute("menuNumber",ctgNo);
	return "/board/boardAllView";
	}
	@RequestMapping("/board/bestBoard")
	public String bestBoard(Model model) {
		ArrayList<BoardVO> brdList=service.bestBoard();
		model.addAttribute("brdTitle","베스트게시판");
		model.addAttribute("brdList",brdList);
		model.addAttribute("menuNumber",200);
		return"/board/boardAllView";
	}
	@RequestMapping("/board/boardInsert/{ctgNo}")
	public String boardInsert(Model model,@PathVariable String ctgNo,String ctgName) {
		model.addAttribute("ctgNo",ctgNo);
		model.addAttribute("ctgName",ctgName);
		return"/board/boardInsert";
	}
	@RequestMapping("/board/insertBoard/{ctgNo}")
	public String insertBoard(BoardVO brd,@PathVariable String ctgNo) { // 커맨드 객체를 통해 자동으로 VO에 저장
		// 서비스를 통해서 DB에 저장
		brd.setCtgNo(ctgNo);
		service.insertBoard(brd);
		// DB 저장 후 전제 상품 조회 화면으로 포워딩  
		return "redirect:/board/boardCtgList/{ctgNo}"; 
	}
	@RequestMapping("/board/boardDetailView/{brdNo}")
	public String boardDetailView(@PathVariable int brdNo ,Model model) { 
		service.viewConut(brdNo);
		BoardVO brd=service.detailViewBoard(brdNo);		
		model.addAttribute("brd",brd);
		ArrayList<CommentVO>comList=comService.commentList(brdNo);
		model.addAttribute("comList",comList);
		return "board/boardDetailView"; 		
	}
	@RequestMapping("/board/boardUpdate/{brdNo}")
	public String boardUpdate(@PathVariable int brdNo,Model model) { // 커맨드 객체를 통해 자동으로 VO에 저장
		BoardVO brd=service.detailViewBoard(brdNo);		
		model.addAttribute("brd",brd);
		return "board/boardUpdate"; 
	}
	@RequestMapping("/board/updateBoard/{brdNo}")
	public String updateBoard(BoardVO brd,@PathVariable int brdNo) {
		brd.setBrdNo(brdNo);
		service.updateBoard(brd);
		return "redirect:/board/boardDetailView/{brdNo}";
	}
	@RequestMapping("/board/deleteBoard/{brdNo}")
	public String deleteBoard(@PathVariable int brdNo,Model model) {
		service.deleteBoard(brdNo);
		return"redirect:/board/boardCtgList/{ctgNo}";
	}
	@RequestMapping("/board/boardSearchForm")
	public String boardSearchForm(){
		return "/board/boardSearch";
	}
	   @RequestMapping("/board/boardSearch")
		   public String boardSearch(@RequestParam HashMap<String,Object>param,Model model) {
		   ArrayList<BoardVO> brdList=service.boardSearch(param);
		   model.addAttribute("brdList",brdList);
	      return "board/boardSearchView";
	   }
	   @RequestMapping("/board/boardListAll/{num}")
		public String boardListAll(Model model,@PathVariable int num) {
			 int count = service.count();
			  
			 // 한 페이지에 출력할 게시물 갯수
			 int postNum = 10;
			  
			 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
			 int pageNum = (int)Math.ceil((double)count/postNum);
			  
			 // 출력할 게시물
			 int displayPost = (num - 1) * postNum;
			    
			ArrayList<BoardVO>brdList=null;
			brdList=service.listPage(displayPost, postNum);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("brdList",brdList);
			model.addAttribute("brdTitle","전체글보기");
			model.addAttribute("menuNumber",100);
			return"/board/boardAllView";
		}
		
}
