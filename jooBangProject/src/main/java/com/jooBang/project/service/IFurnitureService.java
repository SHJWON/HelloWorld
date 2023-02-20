package com.jooBang.project.service;

import java.util.ArrayList;

import com.jooBang.project.model.FurnitureVO;

public interface IFurnitureService {
	public ArrayList<FurnitureVO>listAllFurniture();
	public ArrayList<FurnitureVO>woodAllFurniture();
	public ArrayList<FurnitureVO>lifeAllFurniture();
	public ArrayList<FurnitureVO>kitchenAllFurniture();
	public ArrayList<FurnitureVO>environmentAllFurniture();
	public ArrayList<FurnitureVO>healthAllFurniture();
	public int count();
	public ArrayList<FurnitureVO>listPage(int displayPost, int postNum);
	public ArrayList<FurnitureVO> fRecentView();
	public ArrayList<FurnitureVO> mainFurWood();
	public ArrayList<FurnitureVO> mainFurApplianeces();
}
