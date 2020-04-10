package com.techelevator.model;

import java.util.List;

public interface CourseDAO {

	
	public List<Course> getAllCoursesByStudentId(int studentId);
	public List<Course> getAllCoursesByCategory();
	public List<Course> getAllCourses();
	public void createCourse(Course course);
	

}
