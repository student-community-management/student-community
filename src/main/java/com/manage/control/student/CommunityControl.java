package com.manage.control.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Community;
import com.manage.service.student.CommunityService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("comm/")
public class CommunityControl  {

    @Autowired
    private CommunityService communityService;
    
    @RequestMapping("getAllComm")
    @ResponseBody
    public PageData getAllCommunity(PageParam pageParam,String kw){
       return communityService.getPageData(pageParam, kw);
    }
    
    @RequestMapping("saveComm")
    @ResponseBody
    public String saveComm(@ModelAttribute Community comm){
        if(comm.getCommunityid() == null){
            communityService.save(comm);
            return "save is ok";
        } else {
            communityService.update(comm);
            return "update is ok";
        }
    }
    
    @RequestMapping("delComm")
    @ResponseBody
    public String deleteComm(@RequestBody List<Integer> ids ){
        communityService.deleteMany(ids);
        return "ok";
    }
}
