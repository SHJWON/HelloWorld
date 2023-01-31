package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IWishListDAO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.model.WishListVO;

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

	@Override //핫클릭 방 목록보기
	public ArrayList<RoomVO> hotClickView() {
		// TODO Auto-generated method stub
		return dao.hotClickView();
	}

	@Override //추천 방 목록보기
	public ArrayList<RoomVO> recommendView() {
		// TODO Auto-generated method stub
		return dao.recommendView();
	}

	//찜한방 보기
	@Override
	public ArrayList<WishListVO> likeView(String memId) {
		// TODO Auto-generated method stub
		return dao.likeView(memId);
	}
	
	//최근 본방 저장
	@Override
	public void recentViewSave(String memId, int roomNo) {
		HashMap<String, Object> map= new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("roomNo", roomNo);
		dao.recentViewSave(map);
		
	}

	//최근 본방 목록
	@Override
	public ArrayList<WishListVO> recentList(String memId) {
		// TODO Auto-generated method stub
		return dao.recentList(memId);
	}

	@Override
	public void recentViewDelete(WishListVO vo) {
		dao.recentViewDelete(vo);
	}

	@Override
	public void recentAllDelete() {
		dao.recentAllDelete();
	}

	
	
}
