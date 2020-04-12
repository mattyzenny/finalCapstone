package com.techelevator.model;

import java.util.List;

public interface CourseDAO {

	
//	public List<Course> getAllCoursesByStudentId(int studentId);
//	public List<Course> getAllCoursesByCategory(int categoryId);
	public List<Course> getAllCourses();
	public void createCourse(Course course);
	public Course getCourseById(int id);
	

}
