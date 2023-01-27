package com.jooBang.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.RoomVO;

public interface IWishListDAO {
	public int count(int roomNo);
	public ArrayList<RoomVO>listPage(int displayPost, int postNum);
	public String wishList_check(HashMap<String, Object> map);
	public void insert_wishList(HashMap<String, Object> map);
	public void delete_wishList(HashMap<String, Object> map);
}
