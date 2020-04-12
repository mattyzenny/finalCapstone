package com.techelevator.model;

import java.util.List;

public interface CourseDAO {

	
	public List<Course> getAllCourses();
	public void createCourse(Course course);
	public Course getCourseById(int id);
	
	

}
