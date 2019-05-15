package com.ssafy.safefood.model.service;

import java.util.List;

import com.ssafy.safefood.model.vo.FoodVO;

public interface FoodService {
	public List<FoodVO> findAllFoods();
	public FoodVO findOneFood(int code);
	public List<FoodVO> findFoodsByName(String name);
}
