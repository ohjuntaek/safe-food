package com.ssafy.safefood.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("ingest")
public class IngestVO {
	String userid;
	int foodcode;
	Date create_time;
	int ingest_no;
	
	
	
	public int getIngest_no() {
		return ingest_no;
	}
	public void setIngest_no(int ingest_no) {
		this.ingest_no = ingest_no;
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
	
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	@Override
	public String toString() {
		return "IngestVO [userid=" + userid + ", foodcode=" + foodcode + ", create_time=" + create_time + ", ingest_no="
				+ ingest_no + "]";
	}
	
	
	
}
