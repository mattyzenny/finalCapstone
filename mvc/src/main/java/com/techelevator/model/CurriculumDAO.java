package com.techelevator.model;

import java.util.List;

public interface CurriculumDAO {

public List<Curriculum> getAllCurriculum();
public Curriculum getCurriculumByCode(int id, String name, String description, int duration, int category_id);
}