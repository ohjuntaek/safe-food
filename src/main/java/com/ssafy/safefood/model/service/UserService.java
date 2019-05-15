package com.ssafy.safefood.model.service;

import com.ssafy.safefood.model.vo.UserVO;

public interface UserService {
	public UserVO findUserById(String id);
	public void deleteUserById(String id);
	public int addUser(UserVO user);
	public int updateUser(UserVO user);
}
