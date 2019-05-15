package com.ssafy.safefood.model.board.rest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService
{
	@Autowired
	private SqlSession session;
	private static final String namespace = "mybatis.qnaMapper."; // .까지 문자열로 준비
	
	
	public List<QnA> getQnaList()
	{
		return session.selectList(namespace+"selectAll");
	}

	@Override
	public int addQna(QnA qna)
	{
		return session.insert(namespace + "insert", qna);
	}

	@Override
	public int modifyQna(QnA qna)
	{
		return session.update(namespace + "update", qna);
	}

	@Override
	public int deleteQna(int qnum)
	{
		return session.delete(namespace + "delete", qnum);
	}

	@Override
	public List<QnA> searchQnaByTitle(String title)
	{
		return session.selectOne(namespace + "insert", title);
	}

	@Override
	public List<QnA> searchQnaById(String id)
	{
		return session.selectOne(namespace + "insert", id);
	}

}
