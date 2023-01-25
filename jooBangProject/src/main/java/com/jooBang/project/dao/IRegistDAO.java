package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.roomVO;

public interface IRegistDAO {
	public void insertRoom(roomVO vo);
	public ArrayList<roomVO> listAllRoom();
	public roomVO detailRoom(String roomNo);
	public roomVO updateRoom(roomVO vo);
	public void deleteRoom(String roomNo);
}
