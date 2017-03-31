package com.manage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.manage.entity.Discuss;
import com.manage.mapper.DiscussMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service("DiscussService")
public class DiscussService implements BaseService{
	@Autowired
	private DiscussMapper discussMapper ;

	@Override
	public List<Discuss> queryAll(PageParam pageParam) {
		Map<String,Object> map = new HashMap<String,Object>();
		Discuss disc =  new Discuss();
		if(disc.getStatus() != 0){
			
		}
		return null;
	}

	@Override
	public Object queryOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Object t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Object t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PageData getPageData() {
		// TODO Auto-generated method stub
		return null;
	}
}
