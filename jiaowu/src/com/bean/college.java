package com.bean;

public class college {
	private String collegeID;
	private String collegeName;
	public college() {
		super();
		
	}
	public college(String collegeID, String collegeName) {
		super();
		this.collegeID = collegeID;
		this.collegeName = collegeName;
	}
	public String getCollegeID() {
		return collegeID;
	}
	public void setCollegeID(String collegeID) {
		this.collegeID = collegeID;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	
	

}
