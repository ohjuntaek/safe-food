package com.ssafy.safefood.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ssafy.safefood.model.repository.UserDAO;
import com.ssafy.safefood.model.vo.UserVO;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	UserDAO userDAO;
	@Autowired
	PasswordEncoder passwordEncoder;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserVO userVO = userDAO.findById(username);
		if (userVO != null) {
			List<String> roles = new ArrayList<>();
			roles.add("ROLE_USER");
			userVO.setAuthorities(makeGrantedAuthority(roles));
		}
		return new SecurityUser(userVO);
	}

	private Collection<? extends GrantedAuthority> makeGrantedAuthority(List<String> roles) {
		List<GrantedAuthority> list = new ArrayList<>();
		roles.forEach(role -> list.add(new SimpleGrantedAuthority(role)));
		return list;
	}
	
	public void save(UserVO userVO, String role) {
		userVO.setPass(passwordEncoder.encode(userVO.getPass()));
		userDAO.insertUser(userVO);
	}
}
