package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class GradesJDBC implements GradesDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public GradesJDBC(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public List<Grades> getAllGrades() {
		List<Grades> allGrades = new ArrayList<>();
		String sqlSelectAllGrades = "SELECT * FROM grades";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllGrades);
		while (results.next()) {
			Grades grades = mapRowSetToGrades(results);
			allGrades.add(grades);
		}
		return allGrades;
	}

	@Override
	public Grades getAllGradesByHomeworkId(int homeworkId) {
		SqlRowSet results = jdbcTemplate.queryForRowSet("SELECT grade FROM grades WHERE homework_id = ?", homeworkId);
		if (results.next()) {
			return mapRowSetToGrades(results);
		}
		return null;
	}

	@Override
	public List<Grades> getAllGradesByAppUserId(int appUserId) {
		List<Grades> allGradesByAppUserId = new ArrayList<>();
		SqlRowSet results = jdbcTemplate.queryForRowSet("SELECT grade FROM grades WHERE app_user_id = ?", appUserId);
		if (results.next()) {
			Grades grade = mapRowSetToGrades(results);
			allGradesByAppUserId.add(grade);
			return allGradesByAppUserId;
		}
		return null;
	}

	private Grades mapRowSetToGrades(SqlRowSet results) {
		Grades grade = new Grades();
		grade.setAppUserId(results.getInt("app_user_id"));
		grade.setGrade(results.getInt("grade"));
		grade.setHomeworkId(results.getInt("homework_id"));
		grade.setId(results.getInt("id"));

		return grade;
	}
}
