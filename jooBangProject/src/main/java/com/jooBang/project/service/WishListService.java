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
	public int wishcount(int roomNo) {
		return dao.wishcount(roomNo);
	}
	
	@Override
	public ArrayList<RoomVO> listPage(int displayPost, int postNum) {
		  HashMap<String, Integer> data = new HashMap<String, Integer>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
		return dao.listPage(displayPost, postNum);
	}

	@Override
	public String wishList_check(HashMap<String, Object> map) {
		String check = dao.wishList_check(map);
		System.out.println(check);
		String result="false";
		
		
		if(check!=null) {
			result="true";
		}
		
		return result;
	}

	@Override
	public void insert_wishList(HashMap<String, Object> map) {
		dao.insert_wishList(map);
	}

	@Override
	public void delete_wishList(HashMap<String, Object> map) {
		dao.delete_wishList(map);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
