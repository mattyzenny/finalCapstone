package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class SyllabusJDBC implements SyllabusDAO {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public SyllabusJDBC(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		
	}
	
	@Override
	public List <Syllabus> getAllInstructionBySyllabusId(int id) {
		List<Syllabus> instructionList = new ArrayList<>();
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT instruction FROM syllabus WHERE id =?", id);
		if (result.next()) {
			Syllabus syllabus =  mapRowSetToSyllabus(result);
			instructionList.add(syllabus);
		}
		return instructionList;
	}

	@Override
	public List<Syllabus> getAllAttachmentsBySyllabusId(int id) {
		List<Syllabus> attachmentList = new ArrayList<>();
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT attachments FROM syllabus WHERE id =?", id);
		if (result.next()) {
			Syllabus syllabus = mapRowSetToSyllabus(result);
			attachmentList.add(syllabus);
		}
		return attachmentList;
	}

	
	private Syllabus mapRowSetToSyllabus(SqlRowSet results) {
		Syllabus syllabus = new Syllabus();
		syllabus.setInstruction(results.getString("instruction"));
		syllabus.setAttachments(results.getString("attachments"));
		return syllabus;
	}
	
}
