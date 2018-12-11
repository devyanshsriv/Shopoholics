package com.Backend.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Backend.DAO.UserDAO;
import com.Backend.Model.User;

public class UserTest {

	private static AnnotationConfigApplicationContext context = null;
	private static UserDAO userDAO = null;

	@BeforeClass // static function, always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.Backend");
		context.refresh();
		userDAO = (UserDAO) context.getBean("userDAO");
	}

	@Test
	public void testAddUser() {
		User user = new User();
		user.setName("Ashish");
		user.setEmail("ashish@gmail.com");
		user.setAddress("2/4/18 Awas vikas colony");
		user.setCity("Barabanki");
		user.setLandmark("Near Shubham Guest House");
		user.setPincode("225001");
		user.setMobile("752361213");
		user.setRole("ROLE_USER");
		user.setEnable(true);
		user.setPassword("123456");
		assertTrue("Cannot save the value, please check the code!!", userDAO.addUser(user));
	}

	@Ignore
	@Test
	public void testUpdateUser() {
		User user = userDAO.getSingleUser(2);
		user.setAddress("Agra");
		assertTrue("Cannot save the value, please check the code!!", userDAO.updateUser(user));
	}

	@Ignore
	@Test
	public void testDeleteUser() {

	}

	@Ignore
	@Test
	public void testGetSingleUser() {
		fail("Not yet implemented");
	}

	@Ignore
	@Test
	public void testGetAllUser() {
		fail("Not yet implemented");
	}

}
