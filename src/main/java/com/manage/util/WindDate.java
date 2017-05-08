package com.manage.util;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 日期时间运算/转换类
 * 
 */
public class WindDate {

	/**
	 * 日期(String格式)转成java.util.date格式 如给的字符串不能转换，则返回null
	 * 
	 * @param String
	 * @return Date
	 */
	public static Date stringToDate(String dateType) {
		SimpleDateFormat formatDate = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		formatDate.setLenient(false);
		Date d;
		try {
			d = formatDate.parse(dateType);
			return d;
		} catch (Exception e) {
			formatDate = new SimpleDateFormat(
					"yyyy-MM-dd");
			try {
				d= formatDate.parse(dateType);
				return d;
			} catch (ParseException e1) {
				return null;
			}
		}
	}

	/**
	 * 日期(String格式)转成java.util.date格式 如给的字符串不能转换，则返回null
	 * 
	 * @param String
	 * @return Date
	 */
	public static String dateToString(Date dateType) {
		SimpleDateFormat formatDate = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		formatDate.setLenient(false);
		String d;
		try {
			d = formatDate.format(dateType);
			return d;
		} catch (Exception e) {
			formatDate = new SimpleDateFormat(
					"yyyy-MM-dd");
			try {
				d= formatDate.format(dateType);
				return d;
			} catch (Exception e1) {
				return null;
			}
		}
	}
}
