package com.jooBang.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IPayDAO;
import com.jooBang.project.model.MemberVO;

@Service
public class PayService implements IPayService {
	@Autowired
	@Qualifier("IPayDAO")
	private IPayDAO dao;

	
	@Override
	public MemberVO getMemberInfo(String memId) {
	
	return dao.getMemberInfo(memId);
	}

}
