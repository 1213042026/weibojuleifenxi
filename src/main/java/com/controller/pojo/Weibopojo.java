package com.controller.pojo;

public class Weibopojo {
	private String splitwords;
	private String content;
	private String author;
	private String tag;
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSplitwords() {
		return splitwords;
	}

	public void setSplitwords(String splitwords) {
		this.splitwords = splitwords;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

}
