package com.techelevator.model;

import java.util.List;

public interface CourseDAO {

	
	public List<Course> getAllCoursesByStudentId(int studentId);
//	public List<Course> getAllCoursesByCategoryId(int categoryId);
	

}
