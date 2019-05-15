package com.ssafy.safefood.model.vo;

import java.util.Collection;

import org.apache.ibatis.type.Alias;
import org.springframework.security.core.GrantedAuthority;

@Alias("user")
public class UserVO {
	private String id;
	private String pass;
	private String name;
	private String address;
	private String tel;
	private String allergy;
	private Collection<? extends GrantedAuthority> authorities;
	
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
	
	
	public UserVO(String id, String pass, String name, String address, String tel, String allergy) {
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.address = address;
		this.tel = tel;
		this.allergy = allergy;
	}
	public UserVO() {
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pass=" + pass + ", name=" + name + ", address=" + address + ", tel=" + tel
				+ ", allergy=" + allergy + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAllergy() {
		return allergy;
	}
	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	
	
	
}
