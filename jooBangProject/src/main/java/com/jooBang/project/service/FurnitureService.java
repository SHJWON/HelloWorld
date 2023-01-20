package com.jooBang.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IFurnitureDAO;
import com.jooBang.project.model.FurnitureVO;

@Service
public class FurnitureService implements IFurnitureService {
	@Autowired
	@Qualifier("IFurnitureDAO")
	IFurnitureDAO dao;

	@Override
	public ArrayList<FurnitureVO> listAllFurniture() {
		return dao.listAllFurniture();
	}

	@Override
	public ArrayList<FurnitureVO> ctgListFurniture(String furniturePrdCtg) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String test() {
		System.out.println("형빈");
		return dao.test();
	}

}
