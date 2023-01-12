package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.BoardVO;


public interface IBoardService {
    public ArrayList<BoardVO>ctgListBoard(String ctgNo,String ctgName);
	public void insertBoard(BoardVO brd);
}
