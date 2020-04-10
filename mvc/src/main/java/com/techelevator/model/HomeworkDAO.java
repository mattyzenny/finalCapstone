package com.techelevator.model;

import java.util.List;


public interface HomeworkDAO {

	public List<Homework> getAllHomework();
	public Homework getAllHomeworkByTeacherId(int teacherId);
	public Homework getHomeworkByStudentId(int studentId);
	public Homework getCompletedHomework(boolean complete, int appuserId);
	public Homework getIncompleteHomework(boolean complete, int appuserId);
	public int getProgressPercentageByHomeworkId(int homeworkId, boolean complete);
	public void createHomework(Homework homework);

}
