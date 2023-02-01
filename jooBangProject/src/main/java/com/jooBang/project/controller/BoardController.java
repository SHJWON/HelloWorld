package com.jooBang.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

	@RequestMapping("/pay")
	 public String payment() {	
		 return "/payment/paymentView";

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
	public String insertBoard(@RequestParam("uploadFileMulti") ArrayList<MultipartFile> files,
			                  BoardVO brd,HttpServletRequest req,@PathVariable String ctgNo,HttpSession session) throws IOException { // 커맨드 객체를 통해 자동으로 VO에 저장
		
		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload/
				// 마지막에 / 있어야 함
		String uploadPath = req.getSession().getServletContext().getRealPath("/").replace("webapp","resources");
		String imgUploadPath = uploadPath + File.separator + "static/image/boardImg/";
		
		String brdImage ="";
				
				// 여러 개의 파일 이름을 저장한 리스트 변수 생성
				ArrayList<String> orginalFileNameList  = new ArrayList<String>();
				
				for(MultipartFile file : files) {
					// 2. 원본 파일 이름 저장
					String originalFileName = file.getOriginalFilename();
					//원본 파일 이름을 리스트에 저장
					orginalFileNameList.add(originalFileName);
					
					// 3. 파일 이름이 중복되지 않도록 파일 이름 변경 
					// 서버에 저장할 파일 이름 설정 : UUID 사용
					UUID uuid = UUID.randomUUID();
					String savedFileName = uuid.toString() + "_" + originalFileName;
					
					// 4. 파일 (객체) 생성
					File sendFile = new File(imgUploadPath + savedFileName);
					brdImage+=savedFileName;
					// 5. 서버로 전송
					file.transferTo(sendFile);
				}
		String brdWriter=(String)session.getAttribute("sid");
		// 서비스를 통해서 DB에 저장
		brd.setBrdWriter(brdWriter);
		
		System.out.print(brdWriter);
	    brd.setBrdImage(brdImage);				
		brd.setCtgNo(ctgNo);
		service.insertBoard(brd);
		// DB 저장 후 전제 조회 화면으로 포워딩  		
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
		return"/";
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
		
	   // 게시판에 쓴 글 목록
		@RequestMapping("/myPage/myBoardList")
		public String myBoardList(HttpSession session, Model model) {
           String id = (String)session.getAttribute("sid");
           ArrayList<BoardVO> brdList=service.myBoard(id);
           model.addAttribute("brdList",brdList);
           return "/myPage/myBoardList";
		}
		
}
