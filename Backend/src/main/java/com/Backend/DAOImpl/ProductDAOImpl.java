package com.Backend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Backend.DAO.ProductDAO;
import com.Backend.Model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean updateProduct(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteProduct(int productid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Product getSingleProduct(int productid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		return null;
	}

}
