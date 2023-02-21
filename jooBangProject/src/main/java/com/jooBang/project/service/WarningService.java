package com.jooBang.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IWarningDAO;

@Service
public class WarningService implements IWarningService {
	@Autowired
	@Qualifier("IWarningDAO")
	IWarningDAO dao;
	
	@Override
	public void insertWarning(String url) {
		dao.insertWarning(url);
	}

}
