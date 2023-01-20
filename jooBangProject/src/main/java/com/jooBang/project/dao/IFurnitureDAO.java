package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.FurnitureVO;


public interface IFurnitureDAO {
	public ArrayList<FurnitureVO>listAllFurniture();
	public String test();
	public ArrayList<FurnitureVO>ctgListFurniture(String furniturePrdCtg);

}
