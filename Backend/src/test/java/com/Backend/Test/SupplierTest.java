package com.Backend.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Backend.DAO.SupplierDAO;
import com.Backend.Model.Supplier;

public class SupplierTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static SupplierDAO SupplierDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Backend");
		context.refresh();
		SupplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	}

	@Test
	public void testAddSupplier() {
		Supplier supplier=new Supplier();
		supplier.setSupplierName("Ahmad Hussain");
		supplier.setDescription("Curtain Supplier");
		
		assertTrue("Cannot save the value, please check the code!!", SupplierDAO.addSupplier(supplier));
	}
    
	@Ignore
	@Test
	public void testUpdateSupplier() {
		Supplier Supplier=SupplierDAO.getSingleSupplier(2);

		assertTrue("Cannot save the value, please check the code!!", SupplierDAO.updateSupplier(Supplier));
	}

    @Ignore
	@Test
	public void testDeleteSupplier() {
		
	}

	@Ignore
	@Test
	public void testGetSingleSupplier() {
		fail("Not yet implemented");
	}
}