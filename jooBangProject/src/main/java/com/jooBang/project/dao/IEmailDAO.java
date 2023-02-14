package com.jooBang.project.dao;

import com.jooBang.project.model.EmailVO;

public interface IEmailDAO {
	
	// 인증코드 등록 및 업데이트
	public void updateEmailAuth(EmailVO vo);
	
	// 인증코드 가져오기
	public String getAuthNum(EmailVO vo);
}
