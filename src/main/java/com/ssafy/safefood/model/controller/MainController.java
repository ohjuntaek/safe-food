package com.ssafy.safefood.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author student
 *
 */
@Controller
public class MainController {
	@GetMapping("/")
	public String index(Model model) {
		return "main";
	}
}
