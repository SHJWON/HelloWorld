package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IWishListDAO;
import com.jooBang.project.model.RoomVO;

@Service
public class WishListService implements IWishListService {
	@Autowired
	@Qualifier("IWishListDAO")
	IWishListDAO dao;

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return dao.count();
	}
	
	@Override
	public ArrayList<RoomVO> listPage(int displayPost, int postNum) {
		  HashMap<String, Integer> data = new HashMap<String, Integer>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
		return dao.listPage(displayPost, postNum);
	}
}
