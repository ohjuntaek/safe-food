package com.ssafy.safefood.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.safefood.model.repository.FoodDAO;
import com.ssafy.safefood.model.repository.UserDAO;
import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.UserVO;

@Service
public class FoodServiceImpl implements FoodService{
	@Autowired
	FoodDAO foodDAO;
	
	@Override
	public List<FoodVO> findAllFoods() {
		// TODO Auto-generated method stub
		return foodDAO.findAll();
	}

	@Override
	public FoodVO findOneFood(int code) {
		return foodDAO.findByCode(code);
	}

	@Override
	public List<FoodVO> findFoodsByName(String name) {
		return foodDAO.searchFoods(name);
	}
}
