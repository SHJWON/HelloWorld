package com.jooBang.project.dao;

import java.util.ArrayList;

import com.jooBang.project.model.FurnitureVO;


public interface IFurnitureDAO {
	public ArrayList<FurnitureVO>listAllFurniture();
	public ArrayList<FurnitureVO>woodAllFurniture();
	public ArrayList<FurnitureVO>lifeAllFurniture();
	public ArrayList<FurnitureVO>kitchenAllFurniture();
	public ArrayList<FurnitureVO>environmentAllFurniture();
	public ArrayList<FurnitureVO>healthAllFurniture();
	public ArrayList<FurnitureVO>ctgListFurniture(String furniturePrdCtg);
	public int count();
	public ArrayList<FurnitureVO>listPage(int displayPost, int postNum);

}
