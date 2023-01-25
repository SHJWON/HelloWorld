package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

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
	public ArrayList<FurnitureVO> woodAllFurniture() {
		// TODO Auto-generated method stub
		return dao.woodAllFurniture();
	}

	@Override
	public ArrayList<FurnitureVO> lifeAllFurniture() {
		// TODO Auto-generated method stub
		return dao.lifeAllFurniture();
	}

	@Override
	public ArrayList<FurnitureVO> kitchenAllFurniture() {
		// TODO Auto-generated method stub
		return dao.kitchenAllFurniture();
	}

	@Override
	public ArrayList<FurnitureVO> environmentAllFurniture() {
		// TODO Auto-generated method stub
		return dao.environmentAllFurniture();
	}

	@Override
	public ArrayList<FurnitureVO> healthAllFurniture() {
		// TODO Auto-generated method stub
		return dao.healthAllFurniture();
	}

	@Override
	public int count() {
		return dao.count();
	}

	@Override
	public ArrayList<FurnitureVO> listPage(int displayPost, int postNum) {
		  HashMap<String, Integer> data = new HashMap<String, Integer>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
		return dao.listPage(displayPost, postNum);
	}

	@Override
	public ArrayList<FurnitureVO> fRecentView() {
		return dao.fRecentView();
	}



	

}
