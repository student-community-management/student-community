package com.manage.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Community;
import com.manage.service.CommunityService;
import com.manage.util.PageParam;

@Controller
@RequestMapping("comm/")
public class CommunityControl  {

    @Autowired
    private CommunityService communityService;
    
    
    @RequestMapping("getAllComm")
    @ResponseBody
    public List<Community> getAllCommunity(PageParam pageParam,String kw){
        System.out.println("进入到CommunityController");
       return communityService.queryAll(pageParam, kw);
    }
    
}
