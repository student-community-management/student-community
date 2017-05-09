package com.manage.control.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Manager;
import com.manage.entity.MgrRole;
import com.manage.service.manager.ManagerService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("mgr/")
public class ManagerControl {

    @Autowired
    private ManagerService managerService;

    @RequestMapping("queryAll")
    @ResponseBody
    public PageData queryAll(PageParam pageParam, String kw) {
        return managerService.getPageData(pageParam, kw);
    }
    
    /**
     * 修改管理员密码
     * @param manager
     * @return
     */
    @RequestMapping("updatePwd")
    @ResponseBody
    public String updaPwd(@ModelAttribute Manager manager) {
        managerService.updatePwd(manager);
        return "1";
    }

    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute Manager manager) {

        if (manager.getManagerid() != null) {
            managerService.update(manager);
            return "update";
        } else {
            managerService.save(manager);
            return "save";
        }
        
    }
    
    @RequestMapping("del")
    @ResponseBody
    public String del(@RequestBody List<Integer> ids){
        
        System.out.println("ids.size()======"+ids.size());
        
        managerService.deleteMany(ids);
        
        return "1";
    }

}
