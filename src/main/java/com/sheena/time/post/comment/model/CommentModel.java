package com.sheena.time.post.comment.model;

import java.util.Date;

public class CommentModel {

	private int id;
	private int postId;
	private int userId;
	private String userNickname;
	private String content;
	private Date createdAt;
	private Date uodatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUodatedAt() {
		return uodatedAt;
	}
	public void setUodatedAt(Date uodatedAt) {
		this.uodatedAt = uodatedAt;
	}
	
	
}
