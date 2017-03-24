package com.manage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.manage.entity.Discuss;
import com.manage.mapper.DiscussMapper;

@Service
public class DiscussService {
	@Autowired
	private DiscussMapper discussMapper;
	

	public void save(Discuss d ){
		discussMapper.save(d);
	}
	
}
