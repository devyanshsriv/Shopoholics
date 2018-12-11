package com.Backend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Backend.DAO.UserDAO;
import com.Backend.Model.User;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addUser(User user) {
		try {
			sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean updateUser(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteUser(int userid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleUser(userid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public User getSingleUser(int userid) {
		try {
			return sessionFactory.getCurrentSession().get(User.class, userid);
        } 
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllUSer() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from User").list();
        } 
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public User getUserByEmail(String username) {
		 try {
	            return(User) sessionFactory.getCurrentSession().createQuery("from User where email=:email")
	            .setParameter("email",username).getSingleResult();                
	        }
	        catch(Exception ex){
	            ex.printStackTrace();
	            return null;    
	        }
	}
}