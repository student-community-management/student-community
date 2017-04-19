package com.manage.control;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Dynamics;
import com.manage.service.dynamics.DynamicsService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Controller
public class DynamicsController {
    @Autowired
    private  DynamicsService dynamicsService;
    public ModelAndView queryAllForDyns(PageParam pageParam,String keyWord,Dynamics dynamics){
        ModelAndView mv = new ModelAndView();
        if(pageParam == null){
            pageParam.setRows(5);//每页显示行数
            pageParam.setPage(1);
        }
        List<Dynamics> list = dynamicsService.queryAllForDyns(pageParam, keyWord, dynamics);
               mv.setViewName("front/dynamics.jsp");
        return mv;
    }
}
