package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

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
	public ArrayList<BoardVO> listAllBoard(String ctgNo) {
		return dao.listAllBoard(ctgNo);
	}
	@Override
	public ArrayList<BoardVO> ctgListBoard(String ctgNo) {
		return dao.ctgListBoard(ctgNo);
	}
	@Override
	public ArrayList<BoardVO> bestBoard() {
		return dao.bestBoard();
	}


	@Override
	public void insertBoard(BoardVO brd) {
	          dao.insertBoard(brd);
		
	}
	

	@Override
	public void viewConut(int brdNo) {
	 dao.viewConut(brdNo);
		
	}

	@Override
	public void updateBoard(BoardVO brd) {
		dao.updateBoard(brd);
		
	}

	@Override
	public  BoardVO detailViewBoard(int brdNo) {
		return dao.detailViewBoard(brdNo);
		
	}

	@Override
	public ArrayList<BoardVO> boardSearch(HashMap<String, Object> map) {
		return dao.boardSearch(map);
	}
	

	

	



}
