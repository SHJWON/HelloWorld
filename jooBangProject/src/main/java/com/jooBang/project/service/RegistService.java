package com.jooBang.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IRegistDAO;
import com.jooBang.project.model.roomVO;

@Service
public class RegistService implements IRegistDAO {
	@Autowired
	@Qualifier("IRegistDAO")
	private IRegistDAO dao;
	
	@Override
	public void insertRoom(roomVO vo) {
		dao.insertRoom(vo);
	}

	@Override
	public ArrayList<roomVO> listAllRoom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public roomVO detailRoom(String roomNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public roomVO updateRoom(roomVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteRoom(String roomNo) {
		// TODO Auto-generated method stub

	}

}
