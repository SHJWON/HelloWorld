package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.RoomVO;
import com.jooBang.project.model.WishListVO;

public interface IWishListService {
	public int count();
	public int wishcount(int roomNo);
	public ArrayList<RoomVO>listPage(int displayPost, int postNum);
	public String wishList_check(HashMap<String, Object> map);
	public void insert_wishList(HashMap<String, Object> map);
	public void delete_wishList(HashMap<String, Object> map);
	public ArrayList<RoomVO> hotClickView(); // 메인 핫클릭방
	public ArrayList<RoomVO> recommendView(); //메인 추천방
	public ArrayList<WishListVO> recentList(String memId); // 최근 본방
	public void recentViewSave(String memId, int roomNo); // 최근 본방 저장
	public void recentViewDelete(WishListVO vo); //최근 본방 중복 삭제
	public void recentAllDelete(); // 최근 본 방 데이터 초기화
	public ArrayList<WishListVO> likeView(String memId); // 찜 목록
	public ArrayList<RoomVO>myRoom(String memId);
}
