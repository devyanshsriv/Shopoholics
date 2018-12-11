package com.Backend.DAO;

import java.util.List;

import com.Backend.Model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);

	public boolean updateProduct(Product product);

	public boolean deleteProduct(int productid);

	public Product getSingleProduct(int productid);

	public List<Product> getAllProduct();

}
