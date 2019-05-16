package com.ssafy.safefood.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("choose")
public class ChooseVO {
	String userid;
	int foodcode;
	@Override
	public String toString() {
		return "ChooseVO [userid=" + userid + ", foodcode=" + foodcode + "]";
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getFoodcode() {
		return foodcode;
	}
	public void setFoodcode(int foodcode) {
		this.foodcode = foodcode;
	}
	
}
