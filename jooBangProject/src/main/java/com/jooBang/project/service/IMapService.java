package com.jooBang.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.MapVO;

public interface IMapService {
	public ArrayList<MapVO> listAllMap(); 
	public ArrayList<MapVO>roomInfo(HashMap<String,Object>map);
}
