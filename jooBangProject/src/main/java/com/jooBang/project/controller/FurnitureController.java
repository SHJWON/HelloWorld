package com.jooBang.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jooBang.project.model.FurnitureVO;
import com.jooBang.project.service.FurnitureService;


@Controller
public class FurnitureController {
	@Autowired
	FurnitureService service;
	
	/*가구 전체 페이지*/
	@RequestMapping("/furniture/furnitureRentalView")
	 public String FurnitureListAll(Model model) {
			ArrayList<FurnitureVO>prdList=service.listAllFurniture();
			model.addAttribute("prdList", prdList);
			return"furniture/furnitureRentalView";
		}
	
	/*가구 페이지 */
	@RequestMapping("/furniture/rentalWoodView")
	public String FurnitureWood(Model model) {
		ArrayList<FurnitureVO>prdList=service.woodAllFurniture();
		model.addAttribute("prdList", prdList);
		return"furniture/furnitureRentalView";
	}
	
	/*생활가전 페이지 */
	@RequestMapping("/furniture/rentalLifeView")
	public String FurnitureLife(Model model) {
		ArrayList<FurnitureVO>prdList=service.lifeAllFurniture();
		model.addAttribute("prdList", prdList);
		return"furniture/furnitureRentalView";
	}
	
	/*주방가전 페이지 */
	@RequestMapping("/furniture/rentalKitchenView")
	public String FurnitureKitchen(Model model) {
		ArrayList<FurnitureVO>prdList=service.kitchenAllFurniture();
		model.addAttribute("prdList", prdList);
		return"furniture/furnitureRentalView";
	}
	
	/*환경가전 페이지 */
	@RequestMapping("/furniture/rentalEnvironmentView")
	public String FurnitureEnviroment(Model model) {
		ArrayList<FurnitureVO>prdList=service.environmentAllFurniture();
		model.addAttribute("prdList", prdList);
		return"furniture/furnitureRentalView";
	}
	
	/*헬스가구 페이지 */
	@RequestMapping("/furniture/rentalHealthView")
	public String FurnitureHealth(Model model) {
		ArrayList<FurnitureVO>prdList=service.healthAllFurniture();
		model.addAttribute("prdList", prdList);
		return"furniture/furnitureRentalView";
	}
	
	/*가구 페이징*/
	@RequestMapping("/furniture/furnitureRentalView/{num}")
	public String FurniturePG(Model model,@PathVariable int num) {
		 int count = service.count();
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 15;
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		 // 출력할 게시물
		 int displayPost = (num - 1) * postNum;
		ArrayList<FurnitureVO>prdList=null;
		prdList=service.listPage(displayPost, postNum);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("prdList",prdList);
		model.addAttribute("furnitureTitle", "전체글보기");
		return"furniture/furnitureRentalView";
	}

	 
		

}
