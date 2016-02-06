package com.bean;

public class teacher {
     private String teacherID;
     private String collegeID;
     private String name;
     private String sex;
     private String birthday;
     private String password;
     private int state;
	
     public teacher() {
		super();
		
	}

	public teacher(String teacherID, String collegeID, String name, String sex,
			String birthday, String password, int state) {
		super();
		this.teacherID = teacherID;
		this.collegeID = collegeID;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.password = password;
		this.state = state;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}

	public String getCollegeID() {
		return collegeID;
	}

	public void setCollegeID(String collegeID) {
		this.collegeID = collegeID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
     
}
