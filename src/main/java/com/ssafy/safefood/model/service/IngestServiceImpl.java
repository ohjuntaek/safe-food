package com.ssafy.safefood.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.safefood.model.repository.IngestDAO;
import com.ssafy.safefood.model.vo.ChooseVO;
import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.IngestVO;
import com.ssafy.safefood.model.vo.UserVO;


@Service
public class IngestServiceImpl implements IngestService {
	@Autowired
	IngestDAO dao;
	public List<FoodVO> selectAllIngestList(UserVO user) {
		if (user == null) {
			return null;
		} else {
			return dao.selectAllIngest(user.getId());
		}
	}
	public int addIngest(IngestVO ingest) {
		return dao.addIngest(ingest);
	}public int deleteIngest(int ingest) {
		return dao.deleteIngest(ingest);
	}
	@Override
	public List<Map<String, Double>> selectCaloryGroupByMonth(String string) {
		return dao.selectCaloryGroupByMonth(string);
	}
	@Override
	public List<Map<String, Double>> getSumGroupByNutrient(String id) {
		return dao.getSumGroupByNutrient(id);
	}
	
	
	
	
	
	
	
	@Override
	public List<FoodVO> selectAllChooseList(UserVO user) {
		if (user == null) {
			return null;
		} else {
			return dao.selectAllChoose(user.getId());
		}
	}
	@Override
	public int addChoose(ChooseVO choose) {
		// TODO Auto-generated method stub
		return dao.addChoose(choose);
	}
	@Override
	public int deleteChoose(ChooseVO choose) {
		// TODO Auto-generated method stub
		return dao.deleteChoose(choose);
	}
}
