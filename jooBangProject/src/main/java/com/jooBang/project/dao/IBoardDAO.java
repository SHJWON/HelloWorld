package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.BoardVO;



public interface IBoardDAO {
    public ArrayList<BoardVO>ctgListBoard(String ctgNo,String ctgName);
	public void insertBoard(BoardVO brd);

}
