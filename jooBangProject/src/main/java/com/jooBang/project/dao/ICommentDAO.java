package com.jooBang.project.dao;

import java.util.ArrayList;


import com.jooBang.project.model.CommentVO;

public interface ICommentDAO {
	
	public ArrayList<CommentVO>commentList(int brdNo);
	// 댓글 추가
	public void commentInsert(CommentVO com) ;

	
}
