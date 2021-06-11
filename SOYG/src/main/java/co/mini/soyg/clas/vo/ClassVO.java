package co.mini.soyg.clas.vo;

import java.util.Date;

public class ClassVO {
	private int classCode;
	private String middleCode;
	private String className;
	private Date startDate;
	private String classImage;
	private String classInfo;
	private String classActive;
	private String classStartChk;
	private int classPersonnel;
	
	public int getClassCode() {
		return classCode;
	}
	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}
	public String getMiddleCode() {
		return middleCode;
	}
	public void setMiddleCode(String middleCode) {
		this.middleCode = middleCode;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public String getClassImage() {
		return classImage;
	}
	public void setClassImage(String classImage) {
		this.classImage = classImage;
	}
	public String getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(String classInfo) {
		this.classInfo = classInfo;
	}
	public String getClassActive() {
		return classActive;
	}
	public void setClassActive(String classActive) {
		this.classActive = classActive;
	}
	public String getClassStartChk() {
		return classStartChk;
	}
	public void setClassStartChk(String classStartChk) {
		this.classStartChk = classStartChk;
	}
	public int getClassPersonnel() {
		return classPersonnel;
	}
	public void setClassPersonnel(int classPersonnel) {
		this.classPersonnel = classPersonnel;
	}
}
