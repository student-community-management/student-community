package com.manage.control.student;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Classes;
import com.manage.service.student.ClassesService;

@Controller
@RequestMapping("cls/")
public class ClassesControl {
    @Autowired
    private ClassesService classesService;
    
    /**
     * 得到所有班级
     * @param kw
     * @return
     */
    @RequestMapping("allCls")
    @ResponseBody
    public List<Classes> queryAll() {
        return classesService.queryAll();
    }
}
