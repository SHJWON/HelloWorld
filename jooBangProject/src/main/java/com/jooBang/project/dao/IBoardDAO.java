package com.jooBang.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.BoardVO;




public interface IBoardDAO {
	public ArrayList<BoardVO>listAllBoard(String ctgNo);
    public ArrayList<BoardVO>ctgListBoard(String ctgNo);
    public ArrayList<BoardVO>bestBoard();
	public void insertBoard(BoardVO brd);
	public BoardVO detailViewBoard(int brdNo);
	public void viewConut(int brdNo );
	public  void updateBoard(BoardVO brd);
	public ArrayList<BoardVO>boardSearch(HashMap<String,Object>map);


}
