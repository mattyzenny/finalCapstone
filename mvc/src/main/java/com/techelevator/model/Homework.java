package com.techelevator.model;

import java.util.Date;

public class Homework {

	private int homeworkId;
	private String homeworkName;
	private Date dueDate;
	private boolean complete;
	private int questionId;
	private int answerId;
	private int courseId;
	private int teacherId;
	private int appuserId;
	private int progressPercentage;

	public int getAnswerId() {
		return answerId;
	}

	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}

	public int getAppuserId() {
		return appuserId;
	}

	public void setAppuserId(int appuserId) {
		this.appuserId = appuserId;
	}

	public int getQuestionId() {
		return questionId;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public int getHomeworkId() {
		return homeworkId;
	}

	public void setHomeworkId(int homeworkId) {
		this.homeworkId = homeworkId;
	}

	public String getHomeworkName() {
		return homeworkName;
	}

	public void setHomeworkName(String homeworkName) {
		this.homeworkName = homeworkName;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

	public int getQuestion() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}


	public int getProgressPercentage() {
		return progressPercentage;
	}

	public void setProgressPercentage(int progressPercentage) {
		this.progressPercentage = progressPercentage;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
}