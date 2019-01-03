package com.Backend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Backend.DAO.OrderDAO;
import com.Backend.Model.OrderItems;
import com.Backend.Model.OrderTable;

@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addOrder(OrderTable order) {
		try {
			sessionFactory.getCurrentSession().save(order);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateOrder(OrderTable order) {
		try {
			sessionFactory.getCurrentSession().update(order);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public OrderTable getOrderByEmail(String email) {
		try {

			return sessionFactory.getCurrentSession()
					.createQuery("FROM OrderTable  where id=(select max(id) from OrderTable) and email=:email",
							OrderTable.class)
					.setParameter("email", email).getSingleResult();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean addOrderItem(OrderItems orderItems) {
		try {
			sessionFactory.getCurrentSession().save(orderItems);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public List<OrderItems> getAllOrderItemsByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderItems> getOrderItemListByOrder(OrderTable orderTable) {
		try {

			return sessionFactory.getCurrentSession()
					.createQuery("From OrderItems where order1=:order1", OrderItems.class)
					.setParameter("order1", orderTable).list();
		}

		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}
}
