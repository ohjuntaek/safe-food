package com.ssafy.safefood.config;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

import com.ssafy.safefood.model.vo.UserVO;

public class SecurityUser extends User {
	private static final long serialVersionUID = 1L;

	private String ip;

	public SecurityUser(UserVO member) {
        super(member.getId(), member.getPass(), member.getAuthorities());
    }

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
        this.ip = ip;
    }

}
