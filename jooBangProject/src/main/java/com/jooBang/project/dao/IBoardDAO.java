package com.jooBang.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.BoardVO;




public interface IBoardDAO {
	public ArrayList<BoardVO>listAllBoard();
    public ArrayList<BoardVO>ctgListBoard(String ctgNo);
    public ArrayList<BoardVO>bestBoard();
	public void insertBoard(BoardVO brd);
	public BoardVO detailViewBoard(int brdNo);
	public void viewConut(int brdNo );
	public  void updateBoard(BoardVO brd);
	public void deleteBoard(int brdNo);
	public ArrayList<BoardVO>boardSearch(HashMap<String,Object>map);
	public int count();
	public ArrayList<BoardVO>listPage(int displayPost, int postNum);
	public ArrayList<BoardVO> bRecentView();
	public ArrayList<BoardVO>myBoard(String brdWriter);//내가 쓴 글
	public void comCount(int brdNo);     
	public ArrayList<BoardVO> mainComAnView();
	
	

}
