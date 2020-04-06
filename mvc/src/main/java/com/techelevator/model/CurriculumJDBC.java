package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class CurriculumJDBC implements CurriculumDao {

	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public CurriculumJDBC(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Curriculum> getAllCurriculum() {
		
		List<Curriculum> allCurriculum = new ArrayList<>();
		String sqlSelectAllCurriculum = "SELECT * FROM app_user ORDER BY curriculumName";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllCurriculum);
		while (results.next()) {
			Curriculum curriculum = mapRowSetToCurriculum(results);
			allCurriculum.add(curriculum);
		}
		return allCurriculum;
	}

	@Override
	public Curriculum getCurriculumByCode(String curriculumCode) {
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM app_user WHERE curriculumCode = ?", curriculumCode);
		if(result.next()) {
			return mapRowSetToCurriculum(result);
			
		}
		return null;
	}

	
	private Curriculum mapRowSetToCurriculum(SqlRowSet results) {
		Curriculum curriculum = new Curriculum();
		curriculum.setCurriculumDetails(results.getString("curriculumDetails"));
		curriculum.setCurriculumDuration(results.getInt("curriculumDuration"));
		curriculum.setCurriculumName(results.getString("curriculumName"));
		return curriculum;
	}
}
