package com.jooBang.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.CommentVO;
import com.jooBang.project.service.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService comService;
	
	@RequestMapping("/board/boardComment/{brdNo}")
	public String boardComment(CommentVO com,@PathVariable int brdNo,HttpSession session) {	
		String comWriter=(String)session.getAttribute("nick");
		com.setComWriter(comWriter);
		com.setBrdNo(brdNo);
		comService.commentInsert(com);
		return "redirect:/board/boardDetailView/{brdNo}";
	}

}
