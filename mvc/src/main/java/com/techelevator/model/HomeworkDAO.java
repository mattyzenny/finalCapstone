package com.techelevator.model;

import java.util.List;


public interface HomeworkDAO {

	public List<Homework> getAllHomework();
	public Homework getAllHomeworkByTeacherId(int teacherId);
	public Homework getHomeworkByStudentId(int studentId);
	public List<Homework> getHomeworkStatus(int appuserId);
	public int getProgressPercentageByHomeworkId(int homeworkId, boolean complete);
	public void createHomework(Homework homework);

}
