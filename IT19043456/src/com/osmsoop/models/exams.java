package com.osmsoop.models;

public class exams {

	private int id;
	private String Classsec;
	private String Section;
	private String Exam;
	private String Date;
	private String Starttime;
	private String Endtime;

	public exams() {

	}

	public exams(int id, String Classsec, String Section, String Exam, String Date, String Starttime, String Endtime) {
		this.id = id;
		this.Classsec = Classsec;
		this.Section = Section;
		this.Exam = Exam;
		this.Date = Date;
		this.Starttime = Starttime;
		this.Endtime = Endtime;
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public String getClasssec() {
		return Classsec;
	}

	public void setClasssec(String classsec) {
		Classsec = classsec;
	}

	public String getSection() {
		return Section;
	}

	public void setSection(String section) {
		Section = section;
	}

	public String getExam() {
		return Exam;
	}

	public void setExam(String exam) {
		Exam = exam;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getStarttime() {
		return Starttime;
	}

	public void setStarttime(String starttime) {
		Starttime = starttime;
	}

	public String getEndtime() {
		return Endtime;
	}

	public void setEndtime(String endtime) {
		Endtime = endtime;
	}

}
