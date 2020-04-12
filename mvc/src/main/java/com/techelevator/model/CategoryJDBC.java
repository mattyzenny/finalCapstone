package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class CategoryJDBC implements CategoryDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public CategoryJDBC(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Category> getAllCategories() {
		List<Category> allCategories = new ArrayList<>();
		String sqlSelectAllCategories = "SELECT * FROM category ORDER BY name ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllCategories);
		while (results.next()) {
			Category category = mapRowSetToCategory(results);
			String sqlSelectCoursesByCategory = "SELECT * FROM course WHERE category_id = ?";
			SqlRowSet courseResults = jdbcTemplate.queryForRowSet(sqlSelectCoursesByCategory, category.getId());
			List<Course> allCoursesByCategory = new ArrayList<Course>();
			while (courseResults.next()) {
				Course course = mapRowSetToCourse(courseResults);
				allCoursesByCategory.add(course);
			}
			category.setCourseListByCategory(allCoursesByCategory);
			allCategories.add(category);
		}
		return allCategories;
	}
	// ===================================================================================================
	// Take catId from category ^, use catId to make second request from DB to get
	// list of courses
	// create SQL query to call getCoursesByCatID
	// innerLoop while(result.next())
	// loop through courses and add to course list
	// outside while loop, add course list to cat object (category.add...)
	// ===================================================================================================

	@Override
	public Category getCategoryById(int id) {
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM course WHERE id = ?", id);
		if (result.next()) {
			return mapRowSetToCategory(result);

		}
		return null;
	}

	@Override
	public Category getCategoriesByAppUserId(int appUserId) {
		SqlRowSet results = jdbcTemplate.queryForRowSet(
				"SELECT category.name FROM category" + "JOIN course ON category.id = course.category_id"
						+ " JOIN app_user_course ON course.id = app_user_course.course_id" + " WHERE app_user_id = ?",
				appUserId);
		if (results.next()) {
			return mapRowSetToCategory(results);
		}
		return null;
	}

	@Override
	public int getNextCategoryId() {
		SqlRowSet nextIdResult = jdbcTemplate.queryForRowSet("SELECT nextval('category_id_seq')");
		if (nextIdResult.next()) {
			return nextIdResult.getInt(1);
		} else {
			throw new RuntimeException("Something went wrong while getting an id for the new category");
		}
	}

	private Category mapRowSetToCategory(SqlRowSet results) {
		Category category = new Category();
		category.setId(results.getInt("id"));
		category.setName(results.getString("name"));
		return category;
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

}
