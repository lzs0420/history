package com.bean;

public class studentCourse {
	private String studentID;
	private String courseID;
	private String semester;
	private int score;
	private int state;
	
	public studentCourse() {
		super();
		
	}

	public studentCourse(String studentID, String courseID, String semester,
			int score,int state) {
		super();
		this.studentID = studentID;
		this.courseID = courseID;
		this.semester = semester;
		this.score = score;
		this.state=state;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	

}
