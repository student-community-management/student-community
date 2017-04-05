package com.manage.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Student;
import com.manage.service.StudentService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
public class StudentControl implements BaseControl {

    @Autowired
    private StudentService studentService;

    @RequestMapping("all")
    @ResponseBody
    public PageData qeuryAll(PageParam pageParam,String kw) {
        
        return  studentService.getPageData(pageParam, kw);
    }

    @RequestMapping("getStusByCommid")
    @ResponseBody
    public List<Student> test(Integer id) {
        System.out.println("id==========" + id);
        List<Student> list = studentService.getStudentByCommid(id);
        return list;
    }

}
