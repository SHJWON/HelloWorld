package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.FurnitureVO;

public interface IFurnitureService {
	public ArrayList<FurnitureVO>listAllFurniture();
	public String test();
	public ArrayList<FurnitureVO>ctgListFurniture(String furniturePrdCtg);
}
