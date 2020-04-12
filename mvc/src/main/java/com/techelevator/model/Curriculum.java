package com.techelevator.model;

import java.util.List;

public class Curriculum {

	private String curriculumName;
	private String curriculumDescription;
	private int curriculumId;
	private List<Homework> homeworkList;
	
	
	public int getCurriculumId() {
		return curriculumId;
	}

	public void setCurriculumId(int curriculumId) {
		this.curriculumId = curriculumId;
	}

	public String getCurriculumName() {
		return curriculumName;
	}

	public void setCurriculumName(String curriculumName) {
		this.curriculumName = curriculumName;
	}

	public String getCurriculumDescription() {
		return curriculumDescription;
	}
	public void setCurriculumDescription(String curriculumDescription) {
		this.curriculumDescription = curriculumDescription;
	}

	public List<Homework> getHomeworkList() {
		return homeworkList;
	}

	public void setHomeworkList(List<Homework> homeworkList) {
		this.homeworkList = homeworkList;
	}

}
