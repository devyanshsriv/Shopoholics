package com.Backend.DAO;

import java.util.List;

import com.Backend.Model.User;

public interface UserDAO {

	public boolean addUser(User user);

	public boolean updateUser(User user);

	public boolean deleteUser(int userid);

	public User getSingleUser(int userid);

	public List<User> getAllUSer();

	public User getUserByEmail(String username);

}
