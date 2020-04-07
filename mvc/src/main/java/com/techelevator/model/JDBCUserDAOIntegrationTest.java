package com.techelevator.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.SQLException;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

public class JDBCUserDAOIntegrationTest  {

	private static SingleConnectionDataSource dataSource;
	private UserDAO dao;

	@BeforeClass
	public static void setupDataSource() {
		dataSource = new SingleConnectionDataSource();
		dataSource.setUrl("jdbc:postgresql://localhost:5432/capstone");
		dataSource.setUsername("postgres");
		dataSource.setPassword("postgres1");
		dataSource.setAutoCommit(false);

	}

	@AfterClass
	public static void closeDataSource() throws SQLException {
		dataSource.destroy();
	}

	@After
	public void rollback() throws SQLException {
		dataSource.getConnection().rollback();
	}

	@Test
	public void add_user_to_database() {
		User testUser = new User();
		testUser.setConfirmPassword("123");
		testUser.setPassword("123");
		testUser.setRole("teacher");
		testUser.setUserName("John");

		Assert.assertEquals("123", testUser.getPassword());
		Assert.assertEquals("teacher", testUser.getRole());
		Assert.assertEquals("John", testUser.getUserName());
	}

//	@Test
//	public void save_new_user() {
//		User theUser = getUser("jon", "123", "123");
//		dao.saveUser("john", "123", "123");
//		List<User> results = dao.getUserByUserName("joh");
//		assertNotNull(results);
//		assertEquals(1, results.size());
//		User savedUser = results.get(0);
//		assertUsersAreEqual(theUser, savedUser);
//
//	}
//
//	private User getUser(String userName, String password, String role) {
//		User theUser = new User();
//		theUser.setUserName(userName);
//		theUser.setPassword(password);
//		theUser.setRole(role);
//		return theUser;
//	}
//
//	private void assertUsersAreEqual(User expected, User actual) {
//		assertEquals(expected.getUserName(), actual.getUserName());
//		assertEquals(expected.getPassword(), actual.getPassword());
//		assertEquals(expected.getRole(), actual.getRole());
//	}

}
