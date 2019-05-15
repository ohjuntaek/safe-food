package com.ssafy.safefood.model.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ssafy.safefood.config.CustomUserDetailsService;
import com.ssafy.safefood.model.service.UserService;
import com.ssafy.safefood.model.vo.UserVO;
/**
 * <pre>
 * UserController
 * 1. 회원가입한다
 * 2. 로그인한다
 * 3. 로그아웃한다
 * 4. 회원 정보 본다
 * 5. 회원 정보 수정한다
 * 6. 회원 탈퇴한다
 * 7. 비밀번호 찾는다.
 * 
 * 
 * </pre>
 */
@Controller
public class UserController {
	
	@Autowired
	CustomUserDetailsService userService;
	@Autowired
	UserService preUserService;
	
	/**
	 * 1. 회원가입 페이지 보여준다. /signup : get
	 */
	@GetMapping("/signup")
	public String showSignUpPage() {
		System.out.println("signup:get");
		return "signUp";
	}
	/**
	 * 1. 회원가입한다 : /signup : post
	 */
	@PostMapping("/signup")
	public String signUp(UserVO user) {
		userService.save(user, "ROLE_USER");
		System.out.println("signup:post");
		return "signUpDone";
	}
	
	/**
	 * 2. 로그인 페이지 보여준다 : /login : get
	 */
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}
	
	/**
	 * 2. 로그인 한다 : /login : post
	 */
	@PostMapping("/login")
	public String login() {
		return "loginDone";
	}
	
	/**
	 * 3. 로그아웃 한다 : /logout : get
	 */
	@GetMapping("/logout")
	public String logout() {
		return "logoutDone";
	}
	
	/**
	 * 4. 회원 정보 본다
	 */
	@GetMapping("/myinfo")
	public String showMyInfo(Model model, HttpSession session) {
		model.addAttribute("user", preUserService.findUserById((String)session.getAttribute("id")));
		return "myinfo";
	}
	
	
}
