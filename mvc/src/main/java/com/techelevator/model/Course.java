package com.techelevator.model;

import java.util.List;


public class Course {

	
	private int courseId;
	private String courseName;
	private String courseDescription;
	private String courseDuration;
	private int categoryId;
	private int studentId;
	private int curriculumId;
	private int teacherId;
	private List<Curriculum> curriculumListByCourse;

	
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
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
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public List<Curriculum> getCurriculumListByCourse() {
		return curriculumListByCourse;
	}
	public void setCurriculumListByCourse(List<Curriculum> curriculumListByCourse) {
		this.curriculumListByCourse = curriculumListByCourse;
	}


}
