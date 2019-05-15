package com.ssafy.safefood.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.safefood.model.repository.UserDAO;
import com.ssafy.safefood.model.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;
	
	@Override
	public UserVO findUserById(String id) {
		return userDAO.findById(id);
	}

	@Override
	public void deleteUserById(String id) {
		userDAO.deleteUser(id);
	}

	@Override
	public int addUser(UserVO user) {
		return userDAO.insertUser(user);
	}

	@Override
	public int updateUser(UserVO user) {
		return userDAO.updateUser(user);
	}

}
