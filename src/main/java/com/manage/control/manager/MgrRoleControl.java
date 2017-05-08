package com.manage.control.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.MgrRole;
import com.manage.service.manager.MgrRoleService;

@Controller
@RequestMapping("mr/")
public class MgrRoleControl {
    
    @Autowired
    private MgrRoleService mgrRoleService;
    
    @RequestMapping("queryForCommbo")
    @ResponseBody
    public List<MgrRole> queryForCommbo(){
        return mgrRoleService.queryForCommbo();
    }
    
}
