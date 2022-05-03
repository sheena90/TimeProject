package com.sheena.time.post.model;

public class VideoDetailModel {
	
	private int id;
	private String thumbnail;
	private String title;
	private String link;
	private int likeCount;
	private boolean isFavorites;
	private boolean isLike;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public boolean isFavorites() {
		return isFavorites;
	}
	public void setFavorites(boolean isFavorites) {
		this.isFavorites = isFavorites;
	}
	public boolean isLike() {
		return isLike;
	}
	public void setLike(boolean isLike) {
		this.isLike = isLike;
	}
	
	
	

}
