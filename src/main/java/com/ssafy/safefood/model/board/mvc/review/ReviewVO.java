package com.ssafy.safefood.model.board.mvc.review;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="review")
// 푸드 가져와서 코멘트랑 별점 매겨라
public class ReviewVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer review_no;
	Integer foodcode;
	String foodname;
	String title;
	String writer;
	String comment;
	Date date;
	Integer rating;
	
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getReview_no() {
		return review_no;
	}
	public void setReview_no(Integer review_no) {
		this.review_no = review_no;
	}
	public Integer getFoodcode() {
		return foodcode;
	}
	public void setFoodcode(Integer foodcode) {
		this.foodcode = foodcode;
	}
	public String getFoodname() {
		return foodname;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Integer getRating() {
		return rating;
	}
	public void setRating(Integer rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "ReviewVO [review_no=" + review_no + ", foodcode=" + foodcode + ", foodname=" + foodname + ", title="
				+ title + ", writer=" + writer + ", comment=" + comment + ", date=" + date + ", rating=" + rating + "]";
	}
	
}
