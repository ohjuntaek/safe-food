package com.ssafy.safefood.model.repository;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DuplicateKeyException;

import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.IngestVO;

public interface IngestDAO {
	public List<FoodVO> selectAllIngest(String userid);
	public int addIngest(IngestVO ingest) throws DuplicateKeyException;
	public int deleteIngest(int ingestno);
	public List<Map<String, Double>> selectCaloryGroupByMonth(String string);
	public List<Map<String, Double>> getSumGroupByNutrient(String id);
}
