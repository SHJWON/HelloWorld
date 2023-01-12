package com.jooBang.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jooBang.project.model.MapVO;


public interface IMapDAO {
	public ArrayList<MapVO> listAllMap(); 
	public ArrayList<MapVO>roomInfo(HashMap<String,Object>map);

}
