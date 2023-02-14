package com.jooBang.project.service;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.ReservationVO;

public interface IPayService {

	public MemberVO getMemberInfo(String memId);
	public void insertReservation(ReservationVO vo);
}
