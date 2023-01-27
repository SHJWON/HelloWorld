package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.RoomVO;

public interface IRegistDAO {
	public void insertRoom(RoomVO vo);
	public ArrayList<RoomVO> listAllRoom();
	public RoomVO detailRoom(int roomNo);
	public RoomVO updateRoom(RoomVO vo);
	public void deleteRoom(String roomNo);
	public ArrayList<RoomVO> rRecentView();
	public void viewConut(int roomNo); // 조회수 증가
}
