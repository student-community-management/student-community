package com.manage.mapper;

import java.util.List;

import com.manage.entity.Discuss;

public interface DiscussMapper extends BaseMapper<Discuss>{
	/**
	 * 根据学生ID 查询所有学生的讨论信息
	 * @return 返回查询学生讨论信息
	 */
	List<Discuss> getDiscussByCommid(Integer id);
	
	
}
