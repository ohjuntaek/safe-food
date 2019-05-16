package com.ssafy.safefood.model.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.safefood.model.service.FoodService;
import com.ssafy.safefood.model.service.IngestService;
import com.ssafy.safefood.model.service.UserService;
import com.ssafy.safefood.model.vo.ChooseVO;
import com.ssafy.safefood.model.vo.FoodVO;
import com.ssafy.safefood.model.vo.IngestVO;
import com.ssafy.safefood.model.vo.UserVO;

@Controller
public class IngestController {
	@Autowired
	UserService userService;
	@Autowired
	IngestService ingestService;
	@Autowired
	FoodService foodService;
	
	
	
	@RequestMapping(value = "/ingestlist", method = RequestMethod.GET)
	public String getIngestList(HttpSession session, Model model) {
		System.out.println("ingestlist");
		UserVO user = userService.findUserById((String) session.getAttribute("id"));
		List<FoodVO> list = ingestService.selectAllIngestList(user);
		model.addAttribute("list", list);
		return "ingestList";
	}
	
	@RequestMapping(value = "/addingest", method = RequestMethod.GET)
	public String addIngest(HttpSession session, @RequestParam("foodcode") int foodcode, Model model) {
		System.out.println("addingest");
		IngestVO ingest = new IngestVO();
		String userid = (String)session.getAttribute("id");
		UserVO user = userService.findUserById(userid);
		FoodVO food = foodService.findOneFood(foodcode);
		ingest.setUserid(userid);
		ingest.setFoodcode(foodcode);
		if (user.getAllergy() != null) {
			System.out.println(user.getAllergy());
			String[] userallarr =  user.getAllergy().split(",");
			String[] foodallarr = food.getMaterial().split(",");
			
			System.out.println("유저 알러지 " + Arrays.toString(userallarr));
			System.out.println("푸드 구성 식품" + Arrays.toString(foodallarr));
			boolean isAllegy = false;
			// 이름에 알러지 있나 확인
			for (String userallergy : userallarr) {
				System.out.println(userallergy);
				if (food.getName().contains(userallergy)) {
					isAllegy = true;
					break;
				}
			}
			if (!isAllegy) {
				ii:for (int i = 0; i < userallarr.length; i++) {
					for (int j = 0; j < foodallarr.length; j++) {
						if (foodallarr[j].contains(userallarr[i])) {
							isAllegy = true;
							break ii;
						}
					}
				}
			}
			model.addAttribute("list", foodService.findAllFoods());
			if (!isAllegy) {
				System.out.println("???"+food.getName());
				ingest.setCreate_time(new Date());
				System.out.println(ingestService.addIngest(ingest));
				model.addAttribute("msg", food.getName()+"을 섭취하였습니다");
			} else {
				model.addAttribute("msg", "알러지 반응 있습니다");
			}
		}
		model.addAttribute("list", foodService.findOneFood(foodcode));
		List<FoodVO> list = ingestService.selectAllIngestList(user);
		model.addAttribute("list2", list);
		
		return "foodDetail";
		
	}
	
	@RequestMapping(value = "/deleteingest", method = RequestMethod.GET)
	public String deleteIngest(HttpSession session, @RequestParam int ingest_no) {
		System.out.println("deleteingest");
		ingestService.deleteIngest(ingest_no);
		return "redirect:ingestlist";
	}
	
	
	
//	------------------------------------------------------------
	
	
	@RequestMapping(value = "/chooselist", method = RequestMethod.GET)
	public String getChooseList(HttpSession session, Model model) {
		UserVO user = userService.findUserById((String) session.getAttribute("id"));
		List<FoodVO> list = ingestService.selectAllChooseList(user);
		model.addAttribute("list", list);
		return "chooseList";
	}
	
	@RequestMapping(value = "/addchoose", method = RequestMethod.GET)
	public String addChoose(HttpSession session, @RequestParam("foodcode") int foodcode, Model model) {
		ChooseVO choose = new ChooseVO();
		String userid = (String)session.getAttribute("id");
		UserVO user = userService.findUserById(userid);
		FoodVO food = foodService.findOneFood(foodcode);
		choose.setUserid(userid);
		choose.setFoodcode(foodcode);
		if (user.getAllergy() != null) {
			System.out.println(user.getAllergy());
			String[] userallarr =  user.getAllergy().split(",");
			String[] foodallarr = food.getMaterial().split(",");
			
			System.out.println("유저 알러지 " + Arrays.toString(userallarr));
			System.out.println("푸드 구성 식품" + Arrays.toString(foodallarr));
			boolean isAllegy = false;
			// 이름에 알러지 있나 확인
			for (String userallergy : userallarr) {
				System.out.println(userallergy);
				if (food.getName().contains(userallergy)) {
					isAllegy = true;
					break;
				}
			}
			if (!isAllegy) {
				ii:for (int i = 0; i < userallarr.length; i++) {
					for (int j = 0; j < foodallarr.length; j++) {
						if (foodallarr[j].contains(userallarr[i])) {
							isAllegy = true;
							break ii;
						}
					}
				}
			}
			model.addAttribute("list", foodService.findAllFoods());
			if (!isAllegy) {
				try {
					System.out.println(ingestService.addChoose(choose));
				} catch (DuplicateKeyException e) {
					model.addAttribute("msg", "이미 찜한 상품입니다");
					return "foodList";
				}
				model.addAttribute("msg", food.getName()+"를(을) 찜하였습니다.");
			} else {
				model.addAttribute("msg", "알러지 반응 있습니다");
				return "foodList";
			}
		}
		
		return "foodList";
		
	}
	
	@RequestMapping(value = "/deletechoose", method = RequestMethod.GET)
	public String deleteChoose(HttpSession session, @RequestParam int foodcode) {
		System.out.println("deleteingest");
		ChooseVO choose = new ChooseVO();
		choose.setFoodcode(foodcode);
		choose.setUserid((String) session.getAttribute("id"));
		ingestService.deleteChoose(choose);
		return "redirect:chooselist";
	}
}
