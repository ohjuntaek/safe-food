package com.ssafy.safefood.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.safefood.model.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	private static String namespace = "UserMapper.";
	
	@Override
	public int insertUser(UserVO user) {
		return sqlSessionTemplate.insert(namespace+"insertUser", user);
	}
	
	@Override
	public int updateUser(UserVO user) {
		return sqlSessionTemplate.update(namespace+"updateUser", user);
	}
	
	@Override
	public void deleteUser(String id) {
		sqlSessionTemplate.delete(namespace+"deleteUser", id);
	}
	@Override
	public List<UserVO> findAll() {
		return sqlSessionTemplate.selectList(namespace+"findAll");
	}

	@Override
	public UserVO findById(String id) {
		return sqlSessionTemplate.selectOne(namespace+"findById", id);
	}


}
