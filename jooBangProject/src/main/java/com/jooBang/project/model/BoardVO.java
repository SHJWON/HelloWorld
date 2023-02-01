package com.jooBang.project.model;

import java.util.Date;


public class BoardVO {
   private int brdNo;
   private String brdTitle;
   private String brdContent;
   private String brdWriter;
   private int  brdViewCnt; 
   private Date brdDate;
	private String ctgNo;
	private String ctgName;
	private String brdImage;
	private String memId;
	private int comCnt;
	public int getBrdNo() {
		return brdNo;
	}
	public void setBrdNo(int brdNo) {
		this.brdNo = brdNo;
	}
	public String getBrdTitle() {
		return brdTitle;
	}
	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}
	public String getBrdContent() {
		return brdContent;
	}
	public void setBrdContent(String brdContent) {
		this.brdContent = brdContent;
	}
	public String getBrdWriter() {
		return brdWriter;
	}
	public void setBrdWriter(String brdWriter) {
		this.brdWriter = brdWriter;
	}
	public int getBrdViewCnt() {
		return brdViewCnt;
	}
	public void setBrdViewCnt(int brdViewCnt) {
		this.brdViewCnt = brdViewCnt;
	}
	public Date getBrdDate() {
		return brdDate;
	}
	public void setBrdDate(Date brdDate) {
		this.brdDate = brdDate;
	}
	public String getCtgNo() {
		return ctgNo;
	}
	public void setCtgNo(String ctgNo) {
		this.ctgNo = ctgNo;
	}
	public String getCtgName() {
		return ctgName;
	}
	public void setCtgName(String ctgName) {
		this.ctgName = ctgName;
	}
	public String getBrdImage() {
		return brdImage;
	}
	public void setBrdImage(String brdImage) {
		this.brdImage = brdImage;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getComCnt() {
		return comCnt;
	}
	public void setComCnt(int comCnt) {
		this.comCnt = comCnt;
	}	
	
	
	
}
   


   

