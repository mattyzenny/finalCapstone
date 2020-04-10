package com.techelevator.model;

public class Curriculum {

	private String curriculumName;
	private String curriculumDescription;
	private int curriculumDuration;
	private int curriculumId;
	private int teacherId;
	private String curriculumCategory;
	private int courseId;
	
	
	public int getCurriculumId() {
		return curriculumId;
	}

	public void setCurriculumId(int curriculumId) {
		this.curriculumId = curriculumId;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getCurriculumCategory() {
		return curriculumCategory;
	}

	public void setCurriculumCategory(String curriculumCategory) {
		this.curriculumCategory = curriculumCategory;
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

	public int getCurriculumDuration() {
		return curriculumDuration;
	}

	public void setCurriculumDuration(int curriculumDuration) {
		this.curriculumDuration = curriculumDuration;

	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
}
