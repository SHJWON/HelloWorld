package com.jooBang.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IRegistDAO;
import com.jooBang.project.model.RoomVO;

@Service
public class RegistService implements IRegistService {
	@Autowired
	@Qualifier("IRegistDAO")
	IRegistDAO dao;
	
	@Override
	public void insertRoom(RoomVO vo) {
		dao.insertRoom(vo);
	}

	@Override
	public ArrayList<RoomVO> listAllRoom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RoomVO detailRoom(int roomNo) {
		return dao.detailRoom(roomNo);
	}

	@Override
	public RoomVO updateRoom(RoomVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteRoom(String roomNo) {
		// TODO Auto-generated method stub

	}
	
	@Override
	public ArrayList<RoomVO> rRecentView() {
		// TODO Auto-generated method stub
		return dao.rRecentView();
	}

	@Override
	public void viewCount(int roomNo) {
		dao.viewCount(roomNo);
	}

	@Override
	public void wishCountroom(int roomNo) {
		dao.wishCountroom(roomNo);
	}

}
