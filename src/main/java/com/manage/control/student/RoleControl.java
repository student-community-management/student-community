package com.manage.control.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.manage.service.student.StuRoleService;

@Controller
@RequestMapping("stuRole/")
public class RoleControl {

    @Autowired
    private StuRoleService roleService;

    
}
