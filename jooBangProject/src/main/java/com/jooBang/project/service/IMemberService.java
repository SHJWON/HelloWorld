package com.jooBang.project.service;

import java.util.HashMap;

import com.jooBang.project.model.MemberVO;


public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public String memIdCheck(String memId); // 아이디 중복 확인
	public String findId(String memName, String memEmail);
	public String findPwd(String memName, String memEmail);
	public void changePwd(MemberVO vo);
	public String getName(String memId);
}
