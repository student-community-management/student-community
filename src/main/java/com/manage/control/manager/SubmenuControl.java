package com.manage.control.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Submenu;
import com.manage.service.manager.SubmenuService;
import com.manage.util.PageData;

@Controller
@RequestMapping("submenu/")
public class SubmenuControl {

    @Autowired
    private SubmenuService submenuService;
    
    /**
     * 查询所有的菜单
     * @return
     */
    @RequestMapping("queryAll")
    @ResponseBody
    public PageData queryAll() {
        return submenuService.getPageData(null, null);
    }
    
    /**
     * 通过角色的id 来查询对应的子菜单的id
     * @param id 角色的id
     * @return
     */
    @RequestMapping("subids")
    @ResponseBody
    public List<Integer> getSubids(Integer id) {
        return submenuService.getSubmenuidByRoleid(id);
    }
    
    /**
     * 添加子菜单
     * @param submenu
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute Submenu submenu) {
        // 得到对象id
        Integer id = submenu.getId();
        // 如果对象的id为null则执行添加方法
        // 否则执行更新方法
        if (id == null) {
            submenuService.save(submenu);
            return "save";
        } else {
            submenuService.update(submenu);
            return "update";
        }

    }

    @RequestMapping("del")
    @ResponseBody
    public String del(Integer id) {
        submenuService.delete(id);
        return "1";
    }

}
