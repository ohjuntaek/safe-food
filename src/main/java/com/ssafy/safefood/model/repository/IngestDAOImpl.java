package com.ssafy.safefood.model.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Repository;

import com.ssafy.safefood.model.vo.ChooseVO;
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

	@Override
	public List<FoodVO> selectAllChoose(String userid) {
		List<ChooseVO> chooseList = sqlSession.selectList(namespace + "chooseSelectAll", userid);
		List<FoodVO> list = new ArrayList<>();
		for (ChooseVO choose : chooseList) {
			FoodVO food = foodDAO.findByCode(choose.getFoodcode());
			list.add(food);
		}
		return list;
	}

	@Override
	public int addChoose(ChooseVO choose) throws DuplicateKeyException {
		return sqlSession.insert(namespace + "addChoose", choose);
	}

	@Override
	public int deleteChoose(ChooseVO choose) {
		// TODO Auto-generated method stub
		System.out.println(choose);
		return sqlSession.delete(namespace + "deleteChoose", choose);
	}
}
