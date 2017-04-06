package com.manage.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Classes;
import com.manage.entity.Student;
import com.manage.service.StudentService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("stu/")
public class StudentControl {

    @Autowired
    private StudentService studentService;

    @RequestMapping("getAllStu")
    @ResponseBody
    public PageData qeuryAll(PageParam pageParam, String kw) {
        return studentService.getPageData(pageParam, kw);
    }

    @RequestMapping("getStusByCommid")
    @ResponseBody
    public List<Student> test(Integer id) {
        System.out.println("id==========" + id);
        List<Student> list = studentService.getStudentByCommid(id);
        return list;
    }
    
    /**
     * 添加学生
     * 从前台传stu的属性值
     * 由Springmvc进行封装
     * 
     * 前台参数有:
     *      stuName,stuNativePlace,stuBirthday,
     *      sutSex,classes.classesid
     * 其他参数:
     *      stuid 为自增
     *      stuPwd 默认为 '123123'
     * 
     * @param stu 学生对象
     * @throws Exception
     */
    @RequestMapping("saveStu")
    public void saveStu(@ModelAttribute Student stu)
            throws Exception {
        studentService.save(stu);
    }

}
