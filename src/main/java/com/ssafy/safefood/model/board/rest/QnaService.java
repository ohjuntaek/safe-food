package com.ssafy.safefood.model.board.rest;

import java.util.List;


public interface QnaService
{
	public List<QnA> getQnaList();
	public int addQna(QnA qna);
	public int modifyQna(QnA qna);
	public int deleteQna(int qnum);
	public List<QnA> searchQnaByTitle(String title);
	public List<QnA> searchQnaById(String id);
}
