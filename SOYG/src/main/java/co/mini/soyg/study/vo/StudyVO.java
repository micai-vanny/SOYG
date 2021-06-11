package co.mini.soyg.study.vo;

public class StudyVO {
	private int classCode;
	private String locCode;
	private String className;
	private String startDate; // to_char해서 가져올것
	private String classImage;
	private String classInfo;
	private char classActive;
	private char classStartChk;
	private int personnel;
	private String fieldCode;
 
	public int getClassCode() {
		return classCode;
	}

	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}

	public String getLocCode() {
		return locCode;
	}

	public void setLocCode(String locCode) {
		this.locCode = locCode;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
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

	public char getClassActive() {
		return classActive;
	}

	public void setClassActive(char classActive) {
		this.classActive = classActive;
	}

	public char getClassStartChk() {
		return classStartChk;
	}

	public void setClassStartChk(char classStartChk) {
		this.classStartChk = classStartChk;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getFieldCode() {
		return fieldCode;
	}

	public void setFieldCode(String fieldCode) {
		this.fieldCode = fieldCode;
	}

}
