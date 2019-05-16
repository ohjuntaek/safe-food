package com.ssafy.safefood.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.safefood.model.vo.ChooseVO;
import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.IngestVO;
import com.ssafy.safefood.model.vo.UserVO;

public interface IngestService {
	public List<FoodVO> selectAllIngestList(UserVO user);
	public int addIngest(IngestVO ingest);
	public int deleteIngest(int ingest);
	public List<Map<String, Double>> selectCaloryGroupByMonth(String string);
	public List<Map<String, Double>> getSumGroupByNutrient(String string);
	
	
	
	public List<FoodVO> selectAllChooseList(UserVO user);
	public int addChoose(ChooseVO choose);
	public int deleteChoose(ChooseVO choose);
}
