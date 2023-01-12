package com.jooBang.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IBoardDAO;
import com.jooBang.project.model.BoardVO;


@Service
public class BoardService implements IBoardService {
	@Autowired
	@Qualifier("IBoardDAO")
	private IBoardDAO dao;

	@Override
	public ArrayList<BoardVO> ctgListBoard(String ctgNo,String ctgName) {
		return dao.ctgListBoard(ctgNo,ctgName);
	}

	@Override
	public void insertBoard(BoardVO brd) {
	          dao.insertBoard(brd);
		
	}

	



}
