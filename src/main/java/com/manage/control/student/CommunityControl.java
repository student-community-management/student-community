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
    
    /**
     * 获取所有社团信息
     * @param pageParam 分页条件
     * @param kw 查询关键字
     * @return
     */
    @RequestMapping("getAllComm")
    @ResponseBody
    public PageData getAllCommunity(PageParam pageParam,String kw){
       return communityService.getPageData(pageParam, kw);
    }
    
    /**
     * 添加社团
     * @param comm 社团对象
     * @return
     */
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
    
    /**
     * 删除社团
     * @param ids 要删除的社团id
     * @return
     */
    @RequestMapping("delComm")
    @ResponseBody
    public String deleteComm(@RequestBody List<Integer> ids ){
        communityService.deleteMany(ids);
        return "ok";
    }
    
    @RequestMapping("setMaster")
    @ResponseBody
    public String setMaster(Integer commid , Integer stuid ){
        communityService.setMaster(commid, stuid);
        return "ok";
    }
    
}
