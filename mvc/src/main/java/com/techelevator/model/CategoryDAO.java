package com.techelevator.model;

import java.util.List;

public interface CategoryDAO {
	
	public List<Category> getAllCategories();
	public Category getCategoryById(int id);
	public Category getCategoriesByAppUserId(int appUserId);
	public int getNextCategoryId();

}
