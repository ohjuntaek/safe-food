package com.ssafy.safefood.model.board.mvc.review;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.safefood.model.repository.FoodDAO;

@Controller
public class ReviewController {
	@Autowired
	ReviewRepository reviewRepo;
	@Autowired
	FoodDAO foodDAO;
	
	@GetMapping("/review")
	public String review(Model model) {
		List<ReviewVO> reviewlist = reviewRepo.findAll();
		for (ReviewVO reviewVO : reviewlist) {
			reviewVO.setFoodname(foodDAO.findByCode(reviewVO.getFoodcode()).getName());
		}
		model.addAttribute("list", reviewlist);
		return "board/review/reviewList";
	}
	
	@GetMapping("/addreview")
	public String showAddReview() {
		return "board/review/addReview";
	}
	@PostMapping("/addreview")
	public String addReview(HttpSession session, ReviewVO review) {
		System.out.println("addreview");
		review.setWriter((String) session.getAttribute("id"));
		review.setDate(new Date());
		System.out.println(review);
		reviewRepo.save(review);
		return "redirect:/review";
	}
	@GetMapping("/child")
	public String sendFoodtoParent(Model model) {
		System.out.println("child");
		model.addAttribute("list", foodDAO.findAll());
		return "board/review/child";
	}
	
	@GetMapping("/review/{no}")
	public String viewReview(@PathVariable int no, Model model) {
		ReviewVO review = reviewRepo.findById(no).get();
		model.addAttribute("list", foodDAO.findByCode(review.getFoodcode()));
		model.addAttribute("rlist", review);
		return "board/review/viewReview";
	}
}
