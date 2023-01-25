package com.jooBang.project.service;

import com.jooBang.project.model.MemberVO;

public interface IMyPageService {

	public MemberVO detailViewMyPage(String memId);// 회원정보조회

	public void updateMyPage(MemberVO mem); // 회원정보수정

	public void deleteMyPage(MemberVO mem); // 회원정보수정

}