package com.techelevator.model;

import java.util.List;

public interface CurriculumDao {

	public List<Curriculum> getAllCurriculum();
	

public Curriculum getCurriculumByCode(String CurriculumCode);
}
