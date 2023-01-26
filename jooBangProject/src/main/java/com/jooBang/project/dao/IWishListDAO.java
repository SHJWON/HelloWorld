package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.RoomVO;

public interface IWishListDAO {
	public int count();
	public ArrayList<RoomVO>listPage(int displayPost, int postNum);
}
