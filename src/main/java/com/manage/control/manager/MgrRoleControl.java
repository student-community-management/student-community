package com.manage.control.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
    
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute MgrRole mgrRole){
        
        Integer id = mgrRole.getMgrRoleid();
        
        if(id == null){
            mgrRoleService.save(mgrRole);
            return "save";
        } else {
            mgrRoleService.update(mgrRole);
            return "update";
        }
    }
    
    @RequestMapping("del")
    @ResponseBody
    public String del(Integer id){
        
        mgrRoleService.delete(id);
        
        return "1";
    }
    
    
}
