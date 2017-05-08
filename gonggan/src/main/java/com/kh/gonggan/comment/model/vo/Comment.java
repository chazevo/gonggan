package com.kh.gonggan.comment.model.vo;

import java.sql.Date;

public class Comment {
	
	private int POST_ID;
	private int COMMENT_NUM;
	private String WRITER_ID;
	private String COMMENT_CONTENT;
	private Date COMMENT_DATE;
	private String COMMENT_CHECK;
	
	public Comment() {
		super();
	}
	public Comment(int pOST_ID, int cOMMENT_NUM, String wRITER_ID, String cOMMENT_CONTENT, Date cOMMENT_DATE, String cOMMENT_CHECK) {
		super();
		POST_ID = pOST_ID;
		COMMENT_NUM = cOMMENT_NUM;
		WRITER_ID = wRITER_ID;
		COMMENT_CONTENT = cOMMENT_CONTENT;
		COMMENT_DATE = cOMMENT_DATE;
		COMMENT_CHECK = cOMMENT_CHECK;
	}
	public int getPOST_ID() {
		return POST_ID;
	}
	public void setPOST_ID(int pOST_ID) {
		POST_ID = pOST_ID;
	}
	public int getCOMMENT_NUM() {
		return COMMENT_NUM;
	}
	public void setCOMMENT_NUM(int cOMMENT_NUM) {
		COMMENT_NUM = cOMMENT_NUM;
	}
	public String getWRITER_ID() {
		return WRITER_ID;
	}
	public void setWRITER_ID(String wRITER_ID) {
		WRITER_ID = wRITER_ID;
	}
	public String getCOMMENT_CONTENT() {
		return COMMENT_CONTENT;
	}
	public void setCOMMENT_CONTENT(String cOMMENT_CONTENT) {
		COMMENT_CONTENT = cOMMENT_CONTENT;
	}
	public Date getCOMMENT_DATE() {
		return COMMENT_DATE;
	}
	public void setCOMMENT_DATE(Date cOMMENT_DATE) {
		COMMENT_DATE = cOMMENT_DATE;
	}
	public String getCOMMENT_CHECK() {
		return COMMENT_CHECK;
	}
	public void setCOMMENT_CHECK(String cOMMENT_CHECK) {
		COMMENT_CHECK = cOMMENT_CHECK;
	}
	@Override
	public String toString() {
		return "Comment [POST_ID=" + POST_ID + ", COMMENT_NUM=" + COMMENT_NUM + ", WRITER_ID=" + WRITER_ID
				+ ", COMMENT_CONTENT=" + COMMENT_CONTENT + ", COMMENT_DATE=" + COMMENT_DATE + ", COMMENT_CHECK="
				+ COMMENT_CHECK + "]";
	}
	
	
}

