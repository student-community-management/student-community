package com.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Discuss;
import com.manage.mapper.DiscussMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class DiscussService implements BaseService<Discuss>,DiscussMapper{
	
	@Autowired
	private DiscussMapper discussMapper;

	@Override
	public List<Discuss> queryAll(PageParam pageParam, String keyWord) {
		// TODO Auto-generated method stub
		return discussMapper.queryAll(pageParam, keyWord);
	}

	@Override
	public Discuss queryOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Discuss t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Discuss t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getCount(String keyWord) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PageData getPageData(PageParam pageParam, String keyWord) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public List<Discuss> getDiscussByCommid(Integer id){
		if(id != null){
			return discussMapper.getDiscussByCommid(id);
		} else {
			throw new RuntimeException("查询参数有误");
		}
	}
}
