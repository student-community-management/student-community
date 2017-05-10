package com.manage.control.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.ParentMenu;
import com.manage.service.manager.ParentMenuService;

@Controller
@RequestMapping("pm/")
public class ParentMenuControl {

    @Autowired
    private ParentMenuService parentMenuService;
    
    
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute ParentMenu parentMenu){
        
        //得到对象id
        Integer id = parentMenu.getId();
        // 如果对象的id为null则执行添加方法否则执行更新方法
        if(id == null){
            parentMenuService.save(parentMenu);
            return "save";
        } else {
            parentMenuService.update(parentMenu);
            return "update";
        }
    }
    
    
    @RequestMapping("del")
    @ResponseBody
    public String del(Integer id){
        parentMenuService.delete(id);
        return "1";
        
    }
    
    
}
