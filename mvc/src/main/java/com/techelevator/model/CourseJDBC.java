package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class CourseJDBC implements CourseDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public CourseJDBC(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Course> getAllCoursesByStudentId(int studentId) {

		List<Course> coursesById = new ArrayList<>();
		String sqlSelectCourseById = "SELECT name FROM course JOIN app_user_course ON course.id = app_user_course.id +\n"
				+ "				JOIN app_user ON app_user.id = app_user_course.app_user_id\n"
				+ "				JOIN student ON app_user.id = student.appuser_id";

		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectCourseById);
		while (results.next()) {
			Course course = mapRowSetToCourse(results);
			coursesById.add(course);
		}
		return null;
	}

//	@Override
//	public List<Course> getAllCoursesByStudentId(int categoryId) {
//		List<Course> courseByCategory = new ArrayList<>();
//		String sqlSelectCourseByCategory = "SELECT name FROM course ";
//		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectCourseByCategory);
//		while(results.next()) {
//		Course course = mapRowSetToCourse(results);
//		courseByCategory.add(course);
//		courseByCategory.add(course);
//	}
//		return null;
//	}

	private Course mapRowSetToCourse(SqlRowSet results) {
		Course course = new Course();
		course.setCourseName(results.getString("name"));
		course.setCourseDescription(results.getString("description"));
		course.setCourseDuration(results.getString("duration"));
		course.setCategoryId(results.getInt("categoryId"));

		return course;
	}

}
