package com.techelevator.model;

import java.util.List;

public interface CurriculumDAO {

	public List<Curriculum> getAllCurriculum();
	

public Curriculum getCurriculumByCode(String CurriculumCode);
}
