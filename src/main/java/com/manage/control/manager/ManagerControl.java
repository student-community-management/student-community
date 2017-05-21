package com.manage.control.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.manage.entity.Manager;
import com.manage.service.manager.ManagerService;
import com.manage.service.manager.SubmenuService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("mgr/")
public class ManagerControl {

    // 自动装配
    @Autowired
    private ManagerService managerService;

    @Autowired
    private SubmenuService submenuService;

    /**
     * 查询所有管理员
     * @param pageParam 分页参数
     * @param kw 查询关键字
     * @return
     */
    @RequestMapping("queryAll")
    @ResponseBody
    public PageData queryAll(PageParam pageParam, String kw) {
        return managerService.getPageData(pageParam, kw);
    }

    /**
     * 修改管理员密码
     * @param manager 管理员对象
     * @return
     */
    @RequestMapping("updatePwd")
    @ResponseBody
    public String updaPwd(@ModelAttribute Manager manager) {
        // 修改密码
        managerService.updatePwd(manager);
        return "1";
    }

    /**
     * 添加/更新管理员
     * @param manager 管理员对象
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute Manager manager) {

        // 如果id不为null则执行更新方法
        if (manager.getManagerid() != null) {
            managerService.update(manager);
            return "update";
        } else { // 如果id为null则执行添加方法
            managerService.save(manager);
            return "save";
        }

    }

    /**
     * 批量删除管理员
     * @param ids 要删除的管理员id 
     * @return
     */
    @RequestMapping("del")
    @ResponseBody
    public String del(@RequestBody List<Integer> ids) {

        // 批量删除
        managerService.deleteMany(ids);

        return "1";
    }

    /**
     * 后台登陆
     * @param manager  管理员对象
     * @param req HttpServletRequest
     * @return
     */
    @RequestMapping("login/login")
    @ResponseBody
    public String login(@ModelAttribute Manager manager, HttpServletRequest req) {

        // 查看帐号密码输入是否正确
        // 正确为1 错误为0
        Integer status = managerService.login(manager);

        // 如果帐号密码输入正确判断是否有角色
        if (status == 1) {
            // 通过id先得到完整的管理员对象信息
            Manager mgr = managerService.queryOne(manager.getManagerid());
            // 如果此角色没有被分配角色则提示没有角色
            if (mgr.getMgrRole() == null) {
                return "no role";
            } else if (submenuService.getSubmenuCountByMgrid(mgr.getManagerid()) == 0) {
                // 如果有角色但是没有分配菜单则提示没有分配菜单
                return "no submenu";
            } else {
                // 如果以上条件都满足则将管理员信息保存在session中
                req.getSession().setAttribute("mgr", mgr);
                req.getSession().setAttribute("level", mgr.getMgrRole().getLevel());
                return "ok";
            }
        } else { // 如果帐号或者密码错误则终止登陆
            return "no";
        }
    }
    
    @RequestMapping("invalidate")
    public ModelAndView invalidate(ModelAndView model , HttpServletRequest req){
        
        //注销
        req.getSession().invalidate();
        //跳转到登陆界面
        model.setViewName("redirect:/jsps/back/login.jsp");
         
        return model;
        
    }
    
    
    

}
