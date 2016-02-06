package com.bean;

public class teacherComment {
	private String teacherID;
	private String studentID;
	private String courseID;
	private String time;
	private String comment;
	private int score;

	public teacherComment() {
		super();
		
	}

	public teacherComment(String teacherID, String studentID, String courseID,
			String time, String comment, int score) {
		super();
		this.teacherID = teacherID;
		this.studentID = studentID;
		this.courseID = courseID;
		this.time = time;
		this.comment = comment;
		this.score = score;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	

}
