package com.manage.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Discuss;
import com.manage.entity.Student;
import com.manage.service.DiscussService;
import com.manage.util.PageParam;
@Controller
public class DiscussControl {
	
	@Autowired
	private DiscussService discussService;
	
	@RequestMapping("single")
    @ResponseBody
	public List<Discuss> qeuryAll(PageParam pageParam,String kw) {
		
		List<Discuss> list = discussService.queryAll(pageParam, kw);
		for (Discuss discuss : list) {
			System.out.println(discuss.getStu());
		}
		return list;
		
	}
	
	@RequestMapping("getDiscussByCommid")
	@ResponseBody
	public List<Discuss> test(Integer id){
		System.out.println("id++++++++++++++++++++"+id);
		List<Discuss> list = discussService.getDiscussByCommid(id);
		return list;
	} 
}
