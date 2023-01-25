package com.jooBang.project.dao;

import java.util.HashMap;

import com.jooBang.project.model.MemberVO;


public interface IMemberDAO {
	public void insertMember(MemberVO vo);
	public String loginCheck(String id);
	public String memIdCheck(String memId); // 아이디 중복 확인
	public String findId(HashMap<String, Object> map);
	public String findPwd(HashMap<String, Object> map);
	public void changePwd(MemberVO vo);
}
