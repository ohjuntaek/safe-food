package com.ssafy.safefood.model.repository;

import java.util.List;

import com.ssafy.safefood.model.vo.FoodVO;

public interface FoodDAO {
	public int insert(FoodVO food);
	public List<FoodVO> findAll();
	public FoodVO findByCode(int code);
	public int update(FoodVO food);
	public void deleteByCode(int code);
	public List<FoodVO> searchFoods(String name);
	
}
