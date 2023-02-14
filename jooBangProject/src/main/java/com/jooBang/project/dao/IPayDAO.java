package com.jooBang.project.dao;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.ReservationVO;

public interface IPayDAO {

	public MemberVO getMemberInfo(String memId);
	public void insertReservation(ReservationVO vo);
}
