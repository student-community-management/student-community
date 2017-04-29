package com.manage.control.discuss;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.ReportDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.ReportDiscussService;

@Controller
@RequestMapping("rd/")
public class ReportDiscussControl {
    
    @Autowired
    private ReportDiscussService discussService;
    
    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req,ReportDiscuss reportDiscuss){
        reportDiscuss.setStu((Student)req.getSession().getAttribute("fstu"));
        discussService.save(reportDiscuss);
        return "1";
    }
    
    @RequestMapping("del")
    @ResponseBody
    public String del(){
        return "1";
    }
    
    
}
