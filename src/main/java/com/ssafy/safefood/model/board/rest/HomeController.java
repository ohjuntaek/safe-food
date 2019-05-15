package com.ssafy.safefood.model.board.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private QnaService qService;// 데이터베이스에서 필요한 자료를 가지고 오기위한 서비스 객체
	
	@RequestMapping(value = "/qna.mvc", method = RequestMethod.GET)
	public String qna() {
		return "board/qna/qna";
	}
	@RequestMapping(value = "/addform.mvc", method = RequestMethod.GET)
	public String addform() {
		return "board/qna/addform";
	}
	@RequestMapping(value = "/modifyqnaform.mvc", method = RequestMethod.GET)
	public String modifyqnaform() {
		return "board/qna/modifyqnaform";
	}
	@RequestMapping("/detailqna.mvc")
	public String detailqna(@RequestParam(value = "qnum") int qnum, Model model) {
		model.addAttribute("qn",qnum);
		return "board/qna/detailqna";
	}
	@RequestMapping("/deleteqna.mvc")
	public String deleteqna(@RequestParam(value = "qnum") int qnum)
	{
		qService.deleteQna(qnum);
		return "board/qna/qna";
	}
	@RequestMapping("/modifyqna.mvc")
	public String modifyqna(@RequestParam(value = "qnum") int qnum, Model model)
	{
		model.addAttribute("qn",qnum);
		return "board/qna/modifyqnaform";
	}
	
}
