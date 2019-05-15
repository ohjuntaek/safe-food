package com.ssafy.safefood.model.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.IngestVO;

@Repository
public class IngestDAOImpl implements IngestDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	FoodDAO foodDAO;

	private static final String namespace = "IngestMapper.";

	public List<FoodVO> selectAllIngest(String userid) {
		List<IngestVO> ingestlist = sqlSession.selectList(namespace + "ingestSelectAll", userid);
		List<FoodVO> list = new ArrayList<>();
		for (IngestVO ingest : ingestlist) {
			FoodVO food = foodDAO.findByCode(ingest.getFoodcode());
			food.setCreate_time(ingest.getCreate_time());
			food.setIngest_no(ingest.getIngest_no());
			list.add(food);
		}
		return list;
	}

	public int addIngest(IngestVO ingest){
		System.out.println(ingest);
		return sqlSession.insert(namespace + "addIngest", ingest);
	}

	public int deleteIngest(int ingestno) {
		return sqlSession.delete(namespace + "deleteIngest", ingestno);
	}

	@Override
	public List<Map<String, Double>> selectCaloryGroupByMonth(String id) {
		return sqlSession.selectList(namespace + "selectCaloryGroupByMonth", id);
	}

	@Override
	public List<Map<String, Double>> getSumGroupByNutrient(String id) {
		return sqlSession.selectList(namespace +"selectSumGroupByNutrient", id);
	}
}
