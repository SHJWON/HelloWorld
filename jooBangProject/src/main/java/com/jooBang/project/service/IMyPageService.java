package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.RoomVO;

public interface IMyPageService {

	public MemberVO detailViewMyPage(String memId);// 회원정보조회

	public void updateMyPage(MemberVO mem); // 회원정보수정

	public void deleteMyPage(MemberVO mem); // 회원정보수정
	public ArrayList<RoomVO>myRoom(String memId);
	public void deleteRoom(int roomNo);  

}