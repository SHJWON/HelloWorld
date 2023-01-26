package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.RoomVO;

public interface IRegistDAO {
	public void insertRoom(RoomVO vo);
	public ArrayList<RoomVO> listAllRoom();
	public RoomVO detailRoom(int roomNo);
	public RoomVO updateRoom(RoomVO vo);
	public void deleteRoom(String roomNo);
}
