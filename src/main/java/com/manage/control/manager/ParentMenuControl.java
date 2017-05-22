package com.manage.control.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Manager;
import com.manage.entity.ParentMenu;
import com.manage.service.manager.ParentMenuService;

@Controller
@RequestMapping("pm/")
public class ParentMenuControl {

    @Autowired
    private ParentMenuService parentMenuService;

    /**
     * 添加父菜单
     * @param parentMenu
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute ParentMenu parentMenu) {

        // 得到对象id
        Integer id = parentMenu.getId();
        // 如果对象的id为null则执行添加方法否则执行更新方法
        if (id == null) {
            parentMenuService.save(parentMenu);
            return "save";
        } else {
            parentMenuService.update(parentMenu);
            return "update";
        }
    }
    
    /**
     * 删除父菜单
     * @param id 父菜单的id
     * @return
     */
    @RequestMapping("del")
    @ResponseBody
    public String del(Integer id) {
        parentMenuService.delete(id);
        return "1";
    }
    
    
    /**
     * 生成后台管理菜单
     * @param model Holder for both Model and View 模型和视图
     * @param req HttpServletRequest
     * @return
     */
    @RequestMapping("getMenu")
    public ModelAndView getMenu(ModelAndView model, HttpServletRequest req) {

        // 先得到管理员的信息
        Manager mgr = (Manager) req.getSession().getAttribute("mgr");
        
        // 得到菜单
        List<ParentMenu> menus = parentMenuService.getMenus(mgr);

        // 将数据添加到ModelAndView中
        model.addObject("menus", menus);
        model.setViewName("back/index");

        return model;
    }
    
}
