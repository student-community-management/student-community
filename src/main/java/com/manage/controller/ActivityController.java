package com.manage.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.service.ActivityService;

@Controller
public class ActivityController {
    @Autowired
    private ActivityService service;//活动
    //查询所有活动(分页)
    @RequestMapping("getActivity")
    /*public ModelAndView getActivity(Integer currentPage,Integer startIndex){
        if(currentPage == null){
            currentPage = 1;
        }
        if(startIndex == null){//每页显示第多少行
            startIndex = 0;
        }
        ModelAndView mv = new ModelAndView();
        Integer lineSize = 10;//每页显示行数
        //无条件查询
        Integer count = service.getAllCount();//活动总数
        Integer PageSize = (count - lineSize - 1)/lineSize;//计算需要分的页数
        List<Activity> list = service.getActivity(lineSize, currentPage, startIndex);
        mv.addObject("currentPage",currentPage);
        mv.addObject("list",list);
        mv.addObject("PageSize",PageSize);
        mv.addObject("startIndex",startIndex);
        mv.setViewName("Student/activity/activity");
        return mv;
    }*/
    public List<Activity>  getActivity(){
        List<Activity> list = new ArrayList<Activity>();
        list = service.getActivity();
        return list;
    }
}
