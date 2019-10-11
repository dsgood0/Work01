package com.khrd.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardInfo {
	private String name;
	private String title;
	private String content;
	private Date registerDate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getRegisterDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm");
		return sdf.format(registerDate);
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	
	
}
