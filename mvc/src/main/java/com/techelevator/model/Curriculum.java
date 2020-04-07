package com.techelevator.model;

public class Curriculum {

	private String curriculumname;
	private String curriculumDescription;
	private int curriculumDuration;
	
	
	public String getCurriculumName() {
		return curriculumname;
	}

	public void setCurriculumName(String curriculumName) {
		this.curriculumname = curriculumName;
	}

	public String getCurriculumDetails() {
		return curriculumDescription;
	}

	public void setCurriculumDescription(String curriculumDescription) {
		this.curriculumDescription = curriculumDescription;
	}

	public int getCurriculumDuration() {
		return curriculumDuration;
	}

	public void setCurriculumDuration(int curriculumDuration) {
		this.curriculumDuration = curriculumDuration;

	}
}
