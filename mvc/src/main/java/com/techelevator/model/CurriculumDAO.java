package com.techelevator.model;

import java.util.List;

public interface CurriculumDAO {

public List<Curriculum> getAllCurriculum();
public Curriculum getCurriculumByName(String curriculumName);
//public void createCurriculum(Curriculum curriculum);
}