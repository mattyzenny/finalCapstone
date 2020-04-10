package com.techelevator.model;

import java.util.List;

public interface GradesDAO {
	
	//forStudents
	public List<Grades> getAllGrades();
	public Grades getAllGradesByHomeworkId(int homeworkId);
	public List<Grades> getAllGradesByAppUserId(int appUserId);

}
