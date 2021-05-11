package kr.smhrd.model;

import org.apache.ibatis.type.Alias;

@Alias("BoardVO")
public class BoardVO {
	private int num;
	private String title;
	private String content;
	private int cnt;
	private String writer;
	private String send_date;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public int getCnt() {
		return cnt++;
	}
	public void setCnt(int count) {
		this.cnt = cnt++;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSend_date() {
		return send_date;
	}
	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}
	
	
	
}
