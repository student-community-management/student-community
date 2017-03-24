package com.manage.entity;

import java.sql.Date;

public class ReportActivity {
	private int reportActivityid;
	private Student stu;
	private Activity activity;
	private String message;
	private Date reportDate;

	public int getReportActivityid() {
		return reportActivityid;
	}

	public void setReportActivityid(int reportActivityid) {
		this.reportActivityid = reportActivityid;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

}
