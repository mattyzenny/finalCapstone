package com.techelevator.model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;



@Component
public class CourseJDBC implements CourseDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public CourseJDBC(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Course> getAllCourses() {
		List<Course> allCourses = new ArrayList<>();
		String sqlSelectAllCourses = "SELECT * FROM course";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllCourses);
		while (results.next()) {
			Course course = mapRowSetToCourse(results);
			String sqlSelectCurriculumByCourse = "SELECT * FROM course WHERE course_id = ?";
			SqlRowSet curriculumResults = jdbcTemplate.queryForRowSet(sqlSelectCurriculumByCourse, course.getCourseId());
			List<Curriculum> allCurriculaByCourse = new ArrayList<Curriculum>();
			while (curriculumResults.next()) {
				Curriculum curriculum = mapRowSetToCurriculum(curriculumResults);
				allCurriculaByCourse.add(curriculum);
			}
			course.setCurriculumListByCourse(allCurriculaByCourse);
			allCourses.add(course);
		}
		return allCourses;
	}
	
	@Override
	public Course getCourseById(int id) {
	String sqlQuery = "SELECT * FROM course WHERE id = ?";
	SqlRowSet results = jdbcTemplate.queryForRowSet(sqlQuery, id);
	if (results.next()) {
	return mapRowSetToCourse(results);
	//loop through courses to get modules and homework similar to categoryJDBC
	}
	return null;
	}
	
	

	public void createCourse(Course course) { 
	    String query="INSERT INTO course Values('"+course.getCourseName()+"','"+course.getCourseDescription()+"','"+course.getCourseDuration()+"','"+course.getCategoryId()+"')"; 
	    jdbcTemplate.update(query);  
	}


	
	
	private Course mapRowSetToCourse(SqlRowSet results) {
		Course course = new Course();
		course.setCourseId(results.getInt("id"));
		course.setCourseName(results.getString("name"));
		course.setCourseDescription(results.getString("description"));
		course.setCourseDuration(results.getString("duration"));
		course.setCategoryId(results.getInt("category_id"));

		return course;
	}
	
	private Curriculum mapRowSetToCurriculum(SqlRowSet curriculumResults) {
		Curriculum curriculum = new Curriculum();
		curriculum.setCurriculumId(curriculumResults.getInt("id"));
		curriculum.setCurriculumName(curriculumResults.getString("name"));
		curriculum.setCourseId(curriculumResults.getInt("course_id"));
		return null;
	}


}

