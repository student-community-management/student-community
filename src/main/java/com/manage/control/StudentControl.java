package com.manage.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import com.manage.service.StudentService;

@Controller
public class StudentControl implements BaseControl {

    @Autowired
    @Qualifier("studentService")
    private StudentService studentService;

}
