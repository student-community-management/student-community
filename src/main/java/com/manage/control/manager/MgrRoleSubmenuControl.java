package com.manage.control.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.service.manager.MgrRoleSubmenuService;

@Controller
@RequestMapping("mrs/")
public class MgrRoleSubmenuControl {

    @Autowired
    private MgrRoleSubmenuService mgrRoleSubmenuService;
    
    @RequestMapping("save")
    @ResponseBody
    public String save(@RequestBody List<Integer> ids ,Integer roleid){
        mgrRoleSubmenuService.delete(roleid);
        mgrRoleSubmenuService.save(roleid, ids);
        return "1";
    }
    
}
