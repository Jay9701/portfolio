package com.pjh.domain;

public class ReplyDTO {
	private int rno;
	private int bno;
	private int mno;
	private String reply;
	private String replyer;
	private String replydate;
	private String updatedate;

	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	public String getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	
	
	@Override
	public String toString() {
		return "ReplyDTO [rno=" + rno + ", bno=" + bno + ", mno=" + mno + ", reply=" + reply + ", replyer=" + replyer
				+ ", replydate=" + replydate + ", updatedate=" + updatedate + "]";
	}
	
	
}
