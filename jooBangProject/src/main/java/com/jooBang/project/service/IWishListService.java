package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.RoomVO;

public interface IWishListService {
	public int count();
	public ArrayList<RoomVO>listPage(int displayPost, int postNum);
}
