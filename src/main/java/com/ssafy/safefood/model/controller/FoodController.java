package com.ssafy.safefood.model.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.safefood.model.service.FoodService;
import com.ssafy.safefood.model.service.IngestService;
import com.ssafy.safefood.model.service.UserService;
import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.UserVO;

@Controller
public class FoodController {
	@Autowired
	private FoodService service;
	@Autowired
	private IngestService ingestService;
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/foodlist")
	public String FoodList(@RequestParam(required = false) String keyword, Model model) {
		System.out.println("foodList");
		if (keyword == null) {
			model.addAttribute("list", service.findAllFoods());
		} else {
			System.out.println(keyword);
			model.addAttribute("list", service.findFoodsByName(keyword));
		}
		System.out.println(model.asMap());
		return "foodList";
	}
	
	@GetMapping("/foodlist/{code}")
	public String FoodDetail(@PathVariable int code, Model model, HttpSession session) {
		System.out.println("foodlist/"+code);
//		System.out.println(service.findOneFood(code));
		model.addAttribute("list", service.findOneFood(code));
		UserVO user = userService.findUserById((String) session.getAttribute("id"));
		List<FoodVO> list = ingestService.selectAllIngestList(user);
		model.addAttribute("list2", list);
		
		return "foodDetail";
	}
	
	
	
}
