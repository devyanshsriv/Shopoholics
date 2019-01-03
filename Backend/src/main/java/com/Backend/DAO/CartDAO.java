package com.Backend.DAO;

import java.util.List;

import com.Backend.Model.Cart;
import com.Backend.Model.CartLine;

public interface CartDAO {

	public boolean addCart(Cart cart);

	boolean updateCart(Cart cart);

	public Cart getByEmailid(String email);

	public List<CartLine> list(int cartId);

	public CartLine get(int id);

	public boolean add(CartLine cartLine);

	public boolean update(CartLine cartLine);

	public boolean remove(CartLine cartLine);

	// fetch the CartLine based on cartId and productId
	public CartLine getByCartAndProduct(int cartId, int productId);

	// list of available cartLine
	public List<CartLine> listAvailable(int cartId);

}
