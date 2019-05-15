package com.ssafy.safefood.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.safefood.model.vo.FoodVO;

@Repository
public class FoodDAOImpl implements FoodDAO {
	private final static String namespace = "FoodMapper.";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int insert(FoodVO food) {
		return 0;
	}

	@Override
	public List<FoodVO> findAll() {
		return sqlSessionTemplate.selectList(namespace+"findAll");
	}

	@Override
	public FoodVO findByCode(int code) {
		return sqlSessionTemplate.selectOne(namespace+"findByCode", code);
	}

	@Override
	public int update(FoodVO food) {
		return 0;
	}

	@Override
	public void deleteByCode(int code) {
		
	}

	@Override
	public List<FoodVO> searchFoods(String name) {
		return sqlSessionTemplate.selectList(namespace+"findByName", name);
	}
	
}
