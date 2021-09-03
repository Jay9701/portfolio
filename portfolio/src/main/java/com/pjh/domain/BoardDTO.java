package com.pjh.domain;

public class BoardDTO {
	private int bno;
	private String category;
	private String sub_category;
	private String title;
	private String content;
	private String writer;
	private String regdate;
	private int view;
	private int recomend;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSub_category() {
		return sub_category;
	}
	public void setSub_category(String sub_category) {
		this.sub_category = sub_category;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getRecomend() {
		return recomend;
	}
	public void setRecomend(int recomend) {
		this.recomend = recomend;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", category=" + category + ", sub_category=" + sub_category + ", title=" + title
				+ ", content=" + content + ", writer=" + writer + ", regdate=" + regdate + ", view=" + view
				+ ", recomend=" + recomend + "]";
	}
}
