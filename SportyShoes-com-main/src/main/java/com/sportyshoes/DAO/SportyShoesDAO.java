package com.sportyshoes.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.sportyshoes.api.Admin;
import com.sportyshoes.api.OrderHistory;
import com.sportyshoes.api.Products;
import com.sportyshoes.api.User;

@Repository
public class SportyShoesDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Admin getAdmin() {
		String sql = "select * from admin where id=1";
		Admin admin = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class));
		return admin;
	}

	public User checkUser(User user) {
		String sql = "select * from user";
		List<User> userList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
		for (User temp : userList) {
			if (temp.getName().equals(user.getName()) && temp.getPassword().equals(user.getPassword())) {
				return temp;
			}
		}
		return null;
	}

	public boolean saveUser(User user) {
		String sql = "insert into user(name,password) values(?,?)";
		jdbcTemplate.update(sql, user.getName(), user.getPassword());
		return true;
	}

	public List<User> userList() {
		String sql = "select * from user";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
	}

	public List<Products> ProductList() {
		String sql = "select * from productlist";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Products>(Products.class));
	}

	public void addProduct(Products product) {
		String sql = "insert into productlist(name,price,category) values(?,?,?)";
		jdbcTemplate.update(sql, product.getName(), product.getPrice(), product.getCategory());
	}
	public Products getProduct(int productId) {
		String sql = "select * from productlist where id=?";
		return jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<Products>(Products.class),productId);
	}
	public void saveHistory(OrderHistory history) {
		String sql="insert into orderhistory(userid,username,productid,productname,productprice,productcategory,purchasetime) values(?,?,?,?,?,?,?)";
		Object[] obj= {history.getUserId(),history.getUserName(),history.getProductId(),history.getProductName(),history.getProductPrice(),history.getProductCategory(),history.getPurchaseTime()};
		jdbcTemplate.update(sql,obj);	
	}
	public List<OrderHistory> purcReports(){
		String sql="select * from orderhistory";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<OrderHistory>(OrderHistory.class));
	}
	public List<OrderHistory> purcReportsUser(int userId){
		String sql="select * from orderhistory where userid=?";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<OrderHistory>(OrderHistory.class),userId);
	}
}