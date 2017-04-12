package com.manage.control.authority;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Role;
import com.manage.service.authority.RoleService;

@Controller
@RequestMapping("role/")
public class RoleControl {
    
    @Autowired
    private RoleService roleService;
    
    /**
     * 添加管理时
     * @return
     */
    @RequestMapping("getMgrRoles")
    @ResponseBody
    public List<Role> getMgrRoles(){
        return roleService.getMgrRoles();
    }
}
