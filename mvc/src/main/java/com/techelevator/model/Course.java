package com.techelevator.model;

import java.util.List;


public class Course {

	private int courseId;
	private String courseName;
	private String courseDescription;
	private String courseDuration;
	private int categoryId;
	private int appUserId;
	private int curriculumId;
	private List<Curriculum> curriculumListByCourse;

	
//	private List<Curriculum> curriculumListByCourse;
	
	public int getAppUserId() {
		return appUserId;
	}
	public void setAppUserId(int appUserId) {
		this.appUserId = appUserId;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseDescription() {
		return courseDescription;
	}
	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}
	public String getCourseDuration() {
		return courseDuration;
	}
	public void setCourseDuration(String courseDuration) {
		this.courseDuration = courseDuration;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getCurriculumId() {
		return curriculumId;
	}
	public void setCurriculumId(int curriculumId) {
		this.curriculumId = curriculumId;
	}
	public List<Curriculum> getCurriculumListByCourse() {
		return curriculumListByCourse;
	}
	public void setCurriculumListByCourse(List<Curriculum> curriculumListByCourse) {
		this.curriculumListByCourse = curriculumListByCourse;
	}


}
