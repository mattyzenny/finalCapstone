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
			allCategories.add(category);
		}
		return allCategories;
	}

	@Override
	public Category getCategoryById(int id) {
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM course WHERE id = ?", id);
		if(result.next()) {
			return mapRowSetToCategory(result);
			
		}
		return null;
	}

	@Override
	public Category getCategoriesByAppUserId(int appUserId) {
		SqlRowSet results = jdbcTemplate.queryForRowSet("SELECT category.name FROM category" +
				"JOIN course ON category.id = course.category_id" +
				" JOIN app_user_course ON course.id = app_user_course.course_id" + 
				" WHERE app_user_id = ?", appUserId); 
		if (results.next()) {
			return mapRowSetToCategory(results);
		}
		return null;
	}
	
	private Category mapRowSetToCategory(SqlRowSet results) {
		Category category = new Category();
		category.setId(results.getInt("id"));
		category.setName(results.getString("name"));
		return category;
	}


	@Override
	public List<Category> getAllCategoriesWithCourses() {
		
		return null;
	}

}
