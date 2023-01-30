package com.jooBang.project.model;

public class WishListVO {
	private int roomNo;
	private String memId;
	private String roomName;
	private String roomAddress1;
	private int roomRCount;
	private int roomBCount;
	private int roomRent;
	private String roomImage;

	public int getRoomRent() {
		return roomRent;
	}
	public void setRoomRent(int roomRent) {
		this.roomRent = roomRent;
	}
	public String getRoomImage() {
		return roomImage;
	}
	public void setRoomImage(String roomImage) {
		this.roomImage = roomImage;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomAddress1() {
		return roomAddress1;
	}
	public void setRoomAddress1(String roomAddress1) {
		this.roomAddress1 = roomAddress1;
	}
	public int getRoomRCount() {
		return roomRCount;
	}
	public void setRoomRCount(int roomRCount) {
		this.roomRCount = roomRCount;
	}
	public int getRoomBCount() {
		return roomBCount;
	}
	public void setRoomBCount(int roomBCount) {
		this.roomBCount = roomBCount;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
}
