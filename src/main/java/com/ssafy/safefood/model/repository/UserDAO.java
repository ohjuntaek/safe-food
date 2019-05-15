package com.ssafy.safefood.model.repository;

import java.util.List;

import com.ssafy.safefood.model.vo.UserVO;

public interface UserDAO {
	public List<UserVO> findAll();
	public UserVO findById(String id);
	public int insertUser(UserVO user);
	public int updateUser(UserVO user);
	public void deleteUser(String id);
}
