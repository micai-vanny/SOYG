package co.mini.soyg.likeIt.vo;

public class LikeItVO {
	private String userId;
	private int class_code;
	private char like_check;
	
	public int getClass_code() {
		return class_code;
	}
	public void setClass_code(int class_code) {
		this.class_code = class_code;
	}
	public char getLike_check() {
		return like_check;
	}
	public void setLike_check(char like_check) {
		this.like_check = like_check;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "LikeItVO [userId=" + userId + ", class_code=" + class_code + ", like_check=" + like_check + "]";
	}
	
}
