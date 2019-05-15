package com.ssafy.safefood.model.board.rest;

public class QnA
{
	protected int qnum;
	protected String title;
	protected String text;
	protected String id;
	protected String date;
	
	public QnA()
	{
	}

	public QnA(int qnum, String title, String text, String id, String date)
	{
		this.qnum = qnum;
		this.title = title;
		this.text = text;
		this.id = id;
		this.date = date;
	}
	
	public int getQnum()
	{
		return qnum;
	}

	public void setQnum(int qnum)
	{
		this.qnum = qnum;
	}

	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getText()
	{
		return text;
	}
	public void setText(String text)
	{
		this.text = text;
	}
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getDate()
	{
		return date;
	}
	public void setDate(String date)
	{
		this.date = date;
	}

	@Override
	public String toString()
	{
		return "QnA [qnum=" + qnum + ", title=" + title + ", text=" + text + ", id=" + id + ", date=" + date + "]";
	}
	
}
