package com.jooBang.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.ReservationVO;
import com.jooBang.project.model.RoomVO;
import com.jooBang.project.service.MyPageService;




@Controller
public class MyPageController {
	@Autowired
	private MyPageService service;

	
	/* 마이페이지 이동 */
	@RequestMapping("/myPage/detailViewMyPage")
	public String detailViewMyPage( Model model,HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		if (memId==null || memId=="") {
			return "redirect:/member/login";
		};
		
		MemberVO mem = service.detailViewMyPage(memId);
		model.addAttribute("mem", mem);

		return "myPage/myPage";
	}

	/* 회원정보 수정페이지 이동 */
	@RequestMapping("/myPage/updateMyPageForm")
	public String updateMyPageForm( Model model,HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		MemberVO mem = service.detailViewMyPage(memId);
		model.addAttribute("mem", mem);

		return "myPage/MyPageUpdateForm";
	}

	// 회원 정보 수정 : 수정된 데이터 DB에 저장
	@RequestMapping("/myPage/updateMyPage")
	public String updateMyPage(MemberVO mem, Model model,HttpSession session) {
		
		
		service.updateMyPage(mem);

		model.addAttribute("mem", mem);
		// 수정된 데이터 저장 후 회원 조회 화면으로 포워딩

		return "myPage/myPage";
	}

	/* 회원 탈퇴 페이지 이동 */
	@RequestMapping("/myPage/deleteMyPageForm/{memId}")
	public String deleteMyPageForm(@PathVariable String memId, Model model) {

		MemberVO mem = service.detailViewMyPage(memId);
		model.addAttribute("mem", mem);

		return "myPage/MyPageDeleteForm";
	}

	// 회원 탈퇴 페이지
	@RequestMapping("/myPage/deleteMyPage/{memId}")
	public String deleteMyPage(MemberVO mem, Model model, HttpSession session) {

		service.deleteMyPage(mem);

		session.invalidate();
		// 수정된 데이터 저장 후 회원 조회 화면으로 포워딩

		return "redirect:/";
	}

	// 내 방 목록
	@RequestMapping("/myPage/myRoom")
	public String myRoom(Model model, HttpSession session) {
			String memId = (String)session.getAttribute("sid");		
			ArrayList<RoomVO> roomList = service.myRoom(memId);
	 	    model.addAttribute("roomList", roomList);
	 return "/myPage/myRoom";
}
	@RequestMapping("/myPage/myReservation")
	public String myReservation(Model model, HttpSession session) {	
			String memId = (String)session.getAttribute("sid");	
			ArrayList<ReservationVO> reservationList = service.myReservation(memId);
	 	    model.addAttribute("reservationList", reservationList);	 	 	    
	 return "/myPage/myReservation";
}
				
@ResponseBody
	@RequestMapping("/myPage/deleteRoom")
		public int deleteRoom(@RequestParam("chbox[]") ArrayList<Integer> chkArr) {
			int result = 0; 
					
		// 배열에서 cartNo 추출해서 해당되는 상품 삭제
		if(chkArr != null) {
		for(int roomNo : chkArr) {
		service.deleteRoom(roomNo);
}
				
		result = 1; // 성공
	}
					
		return result;
	}


}