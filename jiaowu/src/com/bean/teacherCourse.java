package com.bean;

public class teacherCourse {
	private String teacherID;
	private String courseID;
	private String year;
	
	public teacherCourse() {
		super();
		
	}

	public teacherCourse(String teacherID, String courseID, String year) {
		super();
		this.teacherID = teacherID;
		this.courseID = courseID;
		this.year = year;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}
	
	

}
