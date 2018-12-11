package com.Backend.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Backend.DAO.ProductDAO;
import com.Backend.Model.Product;

public class ProductTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static ProductDAO ProductDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Backend");
		context.refresh();
		ProductDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	
	@Test
	public void testAddProduct() {
		Product product=new Product();
		product.setName("Brown Curtain");
		product.setCategoryid(101);
		product.setSupplierid(23);
		product.setQuantity("100");
		product.setActive(true);
		product.setUnitprice(50);
		assertTrue("Cannot save the value, please check the code!!", ProductDAO.addProduct(product));
	}
    
	@Ignore
	@Test
	public void testUpdateProduct() {
		Product Product=ProductDAO.getSingleProduct(2);

		assertTrue("Cannot save the value, please check the code!!", ProductDAO.updateProduct(Product));
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
}
