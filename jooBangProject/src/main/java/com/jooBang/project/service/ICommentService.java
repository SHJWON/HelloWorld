package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.CommentVO;

public interface ICommentService {
	public ArrayList<CommentVO>commentList(int brdNo);
	public void commentInsert(CommentVO com) ;

}
