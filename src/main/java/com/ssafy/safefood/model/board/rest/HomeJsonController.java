package com.ssafy.safefood.model.board.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * vue.js 화면에서 데이터만 요청해서 전달할 수 있는 컨트롤러
 */
@RestController
public class HomeJsonController
{
	@Autowired
	private QnaService qService;// 데이터베이스에서 필요한 자료를 가지고 오기위한 서비스 객체

	/**
	 * vue.js 화면에서 요청을 하면, 전체 목록 데이터를 만들어서 리턴할 메서드
	 */
	@RequestMapping("qnas")
	public List<QnA> list()
	{
		System.out.println("?");
		System.out.println(qService.getQnaList());
		return qService.getQnaList();
	}

	/** Vue.js 화면에서 form 태그로 입력받은 데이터를 json으로 보냄 -> 객체로 받아서 insert 하기, 결과를 리턴 */
	@RequestMapping("addqna.json")
	public HashMap<String, Object> addqna(@RequestBody QnA qna)
	{
		System.out.println("폼에서 받아온 데이터 : " + qna);
		int row = qService.addQna(qna); // insert해서 영향을 받은 행의 개수 : 1 리턴
		System.out.println("삽입된 행의 개수 : " + row);
		HashMap<String, Object> result = new HashMap<>();
		result.put("result", row == 1 ? true : false); // insert 결과를 리턴
		return result;
	}

	@RequestMapping("detailqna")
	public List<QnA> detailqna(@RequestBody QnA qna)
	{
//	public List<QnA> detailqna(@RequestParam int qnum) {
		int qnum = qna.getQnum();
		System.out.println("detailqna - " + qnum);
		System.out.println(qService.getQnaList());
		List<QnA> list = qService.getQnaList();
		List<QnA> result = new ArrayList<>();
		int check = qnum;
		for (QnA el : list)
		{
			if (el.getQnum() == check)
			{
				result.add(el);
			}
		}
		return result;
	}
	@RequestMapping("modifyqna")
	public void modifyqna(@RequestBody QnA qna)
	{
		System.out.println(qService.modifyQna(qna));
	}

}
