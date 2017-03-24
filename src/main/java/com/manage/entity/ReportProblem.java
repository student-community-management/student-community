package com.manage.entity;

import java.sql.Date;

public class ReportProblem {
	private int reportProblemid;
	private Student stu;
	private Problem problem;
	private String message;
	private Date reportDate;

	public int getReportProblemid() {
		return reportProblemid;
	}

	public void setReportProblemid(int reportProblemid) {
		this.reportProblemid = reportProblemid;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public Problem getProblem() {
		return problem;
	}

	public void setProblem(Problem problem) {
		this.problem = problem;
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
