package com.practise.spring.mvc.college.dao;

import java.util.List;
import com.practise.spring.mvc.college.entity.User;

public interface UserDao {
	
	public List<User> getUsers();
	
	public User getUser(int id) ;
	
	public void addUser(User userBean);
	
	public void deleteUser(int id);
	
	public List<User> findByListId(Integer userId);
	
}