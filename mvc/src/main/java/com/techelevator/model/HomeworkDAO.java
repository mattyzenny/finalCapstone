package com.techelevator.model;

import java.util.List;

public interface HomeworkDAO {

	public Homework getAllHomeworkByCourse();
	public List<Homework> getHomeworkByStudentId();

}
