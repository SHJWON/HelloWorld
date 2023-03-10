package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IMapDAO;
import com.jooBang.project.model.MapVO;

@Service
public class MapService implements IMapService {
	 @Autowired
	  @Qualifier("IMapDAO")
	   private IMapDAO dao;
	@Override
	public ArrayList<MapVO> listAllMap() {
		return dao.listAllMap();
		
	}
	@Override
	public ArrayList<MapVO> roomInfo(HashMap<String, Object> map) {	
		return dao.roomInfo(map);
	}

}
