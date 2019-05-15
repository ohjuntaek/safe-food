package com.ssafy.safefood.model.board.mvc.notice;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="notice")
public class NoticeVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer notice_no;
	String title;
	String content;
	String writer;
	Date date;
	public Integer getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(Integer notice_no) {
		this.notice_no = notice_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
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
	@Override
	public String toString() {
		return "NoticeVO [notice_no=" + notice_no + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", date=" + date + "]";
	}
	
	
	
	
}
