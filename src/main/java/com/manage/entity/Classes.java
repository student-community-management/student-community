package com.manage.entity;

import java.sql.Date;

/**
 * 
 * @author ChenYuhao
 *
 *         Classes 班级
 *
 */
public class Classes {

	private int classesid; // 班级id
	private String grade; // 年级
	private String classes; // 班级
	private Date year; // 第几届的学生

	public int getClassesid() {
		return classesid;
	}

	public void setClassesid(int classesid) {
		this.classesid = classesid;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public Date getYear() {
		return year;
	}

	public void setYear(Date year) {
		this.year = year;
	}

}
