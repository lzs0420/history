package com.bean;

/**
 * @author Administrator
 *
 */
public class student {
     private String studentID;
     private String majorID;
     private String name;
     private int grade;
     private String birthday;
     private String sex;
     private String password;
     private int year;
     private int state;
     
     public student(String studentID, String majorID, String name, int grade,
			String birthday, String sex, String password, int year, int state) {
		super();
		this.studentID = studentID;
		this.majorID = majorID;
		this.name = name;
		this.grade = grade;
		this.birthday = birthday;
		this.sex = sex;
		this.password = password;
		this.year = year;
		this.state = state;
	}
    
	public student() {
		super();
		
	}
	
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public String getMajorID() {
		return majorID;
	}
	public void setMajorID(String majorID) {
		this.majorID = majorID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
