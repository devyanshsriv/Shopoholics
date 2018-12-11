package com.Backend.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Backend.DAO.CategoryDAO;
import com.Backend.Model.Category;

public class CategoryTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static CategoryDAO CategoryDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Backend");
		context.refresh();
		CategoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	}

	@Test
	public void testAddCategory() {
		Category category=new Category();
//		category.setCategoryId(1);
		category.setCategoryName("Curtains");
		category.setDescription("Short Window Curtains");
		assertTrue("Cannot save the value, please check the code!!", CategoryDAO.addCategory(category));
	}
    
	@Ignore
	@Test
	public void testUpdateProduct() {
		Category Category=CategoryDAO.getSingleCategory(2);

		assertTrue("Cannot save the value, please check the code!!", CategoryDAO.updateCategory(Category));
	}

    @Ignore
	@Test
	public void testDeleteProduct() {
		
	}

	@Ignore
	@Test
	public void testGetSingleProduct() {
		fail("Not yet implemented");
	}


	@Ignore
	@Test
	public void testGetAllProduct() {
		fail("Not yet implemented");
	}

}
