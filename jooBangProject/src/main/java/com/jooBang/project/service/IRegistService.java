package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.RoomVO;

public interface IRegistService {
	public void insertRoom(RoomVO vo);
	public ArrayList<RoomVO> listAllRoom();
	public RoomVO detailRoom(int roomNo);
	public RoomVO updateRoom(RoomVO vo);
	public void deleteRoom(String roomNo);
	public ArrayList<RoomVO> rRecentView();
	public void viewCount(int roomNo);
	public void wishCountroom(int roomNo);
}
