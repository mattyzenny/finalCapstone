package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class CurriculumJDBC implements CurriculumDAO {

	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public CurriculumJDBC(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Curriculum> getAllCurriculum() {
		
		List<Curriculum> allCurriculum = new ArrayList<>();
		String sqlSelectAllCurriculum = "SELECT * FROM curriculum ORDER BY name ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllCurriculum);
		while (results.next()) {
			Curriculum curriculum = mapRowSetToCurriculum(results);
			allCurriculum.add(curriculum);
		}
		return allCurriculum;
	}

	@Override
	public Curriculum getCurriculumByName(String name) {
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM course WHERE name = ?", name);
		if(result.next()) {
			return mapRowSetToCurriculum(result);
			
		}
		return null;
	}

	
	private Curriculum mapRowSetToCurriculum(SqlRowSet results) {
		Curriculum curriculum = new Curriculum();
		curriculum.setCurriculumDescription(results.getString("description"));
		curriculum.setCurriculumDuration(results.getInt("duration"));
		curriculum.setCurriculumName(results.getString("name"));
		return curriculum;
	}
}

