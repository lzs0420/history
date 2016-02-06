package com.bean;

public class course {
	private String courseID;
	private String courseName;
	private int credit;
	private int peopleNum;
	private int period;
	private int state;
	
	public course() {
		super();
		
	}
	
	public course(String courseID, String courseName,
			int credit,  int period, int peopleNum,int state) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
		this.credit = credit;
		this.peopleNum = peopleNum;
		this.period = period;
		this.state = state;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public int getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
}
