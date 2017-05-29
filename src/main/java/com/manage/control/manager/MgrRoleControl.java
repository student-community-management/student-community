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
    
    /**
     * 添加/更新角色
     * @param mgrRole 角色对象
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute MgrRole mgrRole){
        
        // 得到角色的id
        Integer id = mgrRole.getMgrRoleid();
        
        //如果角色的id为null则执行添加方法
        //如果角色的id 不为null则执行更新方法
        if(id == null){
            mgrRoleService.save(mgrRole);
            return "save";
        } else {
            mgrRoleService.update(mgrRole);
            return "update";
        }
    }
    
    /**
     * 删除对象
     * @param id
     * @return
     */
    @RequestMapping("del")
    @ResponseBody
    public String del(Integer id){
        
        mgrRoleService.delete(id);
        
        return "1";
    }
    
    
}
