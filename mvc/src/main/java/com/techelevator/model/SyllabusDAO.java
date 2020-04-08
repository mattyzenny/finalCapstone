package com.techelevator.model;

import java.util.List;

public interface SyllabusDAO {

	public List<Syllabus> getAllInstructionBySyllabusId(int syllabusId);
	
	public List<Syllabus> getAllAttachmentsBySyllabusId(int syllabusId);
	
	
	
}
