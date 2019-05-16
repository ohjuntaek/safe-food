package com.ssafy.safefood.model.chart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.ssafy.safefood.model.service.IngestService;

@Controller
public class ChartController {
	@Autowired
	IngestService ingestService;
	
	@GetMapping("/getchartdata")
	public @ResponseBody String getChartData(HttpSession session) {
		System.out.println("getchartdata");
		Gson gson = new Gson();
		String json = gson.toJson(ingestService.selectCaloryGroupByMonth((String) session.getAttribute("id")));
		System.out.println(json);
		return json;
	}
	
	@GetMapping("/chart")
	public String showChart() {
		return "chart/chart";
	}
	@GetMapping("/chart2")
	public String showChart2() {
		return "chart/chart2";
	}
	@GetMapping("/getsum")
	public @ResponseBody String getSumGroupByNutrient(HttpSession session) {
		Gson gson = new Gson();
		String json;
		json = gson.toJson(ingestService.getSumGroupByNutrient((String) session.getAttribute("id")));
		return json;
	}
	@GetMapping("/getallsum")
	public @ResponseBody String getAllSumGroupByNutrient() {
		Gson gson = new Gson();
		String json;
		json = gson.toJson(ingestService.getSumGroupByNutrient(""));
		return json;
	}
}
