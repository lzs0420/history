package com.bean;

public class major {
	private String majorID;
	private String collegeID;
    private String majorName;
	
    public major() {
		super();
		
	}

	public major(String majorID, String collegeID, String majorName) {
		super();
		this.majorID = majorID;
		this.collegeID = collegeID;
		this.majorName = majorName;
	}

	public String getMajorID() {
		return majorID;
	}

	public void setMajorID(String majorID) {
		this.majorID = majorID;
	}

	public String getCollegeID() {
		return collegeID;
	}

	public void setCollegeID(String collegeID) {
		this.collegeID = collegeID;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
    
	

}
