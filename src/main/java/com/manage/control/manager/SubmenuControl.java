package com.manage.control.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.service.manager.SubmenuService;
import com.manage.util.PageData;

@Controller
@RequestMapping("submenu/")
public class SubmenuControl {

    @Autowired
    private SubmenuService submenuService;
    
    
    @RequestMapping("queryAll")
    @ResponseBody
    public PageData queryAll(){
        return submenuService.getPageData(null, null);
    }
}
