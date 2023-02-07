package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.RoomVO;

public interface IMyPageDAO {

	public MemberVO detailViewMyPage(String memId); // 회원 정보조회

	public void updateMyPage(MemberVO mem); // 회원정보조회 수정
	
	public String deleteMyPage(MemberVO mem); // 회원 탈퇴
	
	public void realDelete1(String result);
	public ArrayList<RoomVO>myRoom(String memId);
	public void deleteRoom(int roomNo); 
	
}
