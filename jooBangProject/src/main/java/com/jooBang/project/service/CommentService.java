package com.jooBang.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.jooBang.project.dao.ICommentDAO;
import com.jooBang.project.model.CommentVO;

@Service
public class CommentService implements ICommentService {

	@Autowired
	@Qualifier("ICommentDAO")
	private ICommentDAO dao;
	@Override
	public ArrayList<CommentVO> commentList(int brdNo) {
		return dao.commentList(brdNo);
	}
	@Override
	public void commentInsert(CommentVO com) {
		dao.commentInsert(com);

	}

	

}
