package com.techelevator.model;

import java.util.List;

public class Category {
	
	private int id;
	private String name;
	private int appUserId;
	private List<Course> courseListByCategory;
	
	
	
	public int getAppUserId() {
		return appUserId;
	}
	public void setAppUserId(int appUserId) {
		this.appUserId = appUserId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Course> getCourseListByCategory() {
		return courseListByCategory;
	}
	public void setCourseListByCategory(List<Course> courseListByCategory) {
		this.courseListByCategory = courseListByCategory;
	}
	
	



//private List <Course> courseList;


}
//public List<Course> getCourseList() {
//    return courseList;
//}
//public void setCourseList(List<Course> courseList) {
//    this.courseList = courseList;
//
//}

