package com.jooBang.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jooBang.project.dao.IMyPageDAO;
import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.ReservationVO;
import com.jooBang.project.model.RoomVO;

@Service
public class MyPageService implements IMyPageService {

	@Autowired
	@Qualifier("IMyPageDAO")
	private IMyPageDAO dao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public MemberVO detailViewMyPage(String memId) {

		return dao.detailViewMyPage(memId);
	}

	@Override
	public void updateMyPage(MemberVO mem) {
		dao.updateMyPage(mem);
	}

	@Override
	public void deleteMyPage(MemberVO mem) {
		// 전달된 아이디로 암호화된 비밀번호 알아오기
		String encodedPw = dao.deleteMyPage(mem);
		System.out.println(encodedPw);

		String result = "fail";
		// 암호화된 비밀번호와 입력해서 전달된 비밀번호와 일치하는지 확인
		if (encodedPw != null && passwordEncoder.matches((String) mem.getMemPwd(), encodedPw)) {
			result = mem.getMemId();

			dao.realDelete1(result);
		}

	}
	@Override
	public ArrayList<RoomVO> myRoom(String memId) {
		return dao.myRoom(memId);
	}

	@Override
	public void deleteRoom(int roomNo) {
		dao.deleteRoom(roomNo);
		
	}

	@Override
	public ArrayList<ReservationVO> myReservation(String memId) {
		return dao.myReservation(memId);
	}

	@Override
	public ReservationVO detailReservation(int rsvNo) {
		return dao.detailReservation(rsvNo);
	}

	
	

}
