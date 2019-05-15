package com.ssafy.safefood.model.board.mvc.notice;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class NoticeController {
	@Autowired
	NoticeRepository repo;
	
	@GetMapping("/notice")
	public String showNoticeList(Model model) {
		model.addAttribute("list", repo.findAll());
		return "board/notice/noticeList";
	}
	
	@GetMapping("/addnotice")
	public String showAddNotice() {
		return "board/notice/addNotice";
	}
	@PostMapping("/addnotice")
	public String AddNotice(HttpSession session, NoticeVO notice) {
		Date currentTime = new Date();
		notice.setWriter((String) session.getAttribute("id"));
		notice.setDate(currentTime);
		repo.save(notice);
		return "redirect:/notice";
	}
	
	@GetMapping("/notice/{no}")
	public String ViewNotice(@PathVariable int no, Model model) {
		System.out.println("notice/"+no);
		model.addAttribute("list", repo.findById(no).get());
		System.out.println(model.asMap());
		return "board/notice/noticeView";
	}
}
