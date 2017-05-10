package com.manage.mapper.manager;

import java.util.List;

import com.manage.entity.Submenu;
import com.manage.mapper.BaseMapper;

public interface SubmenuMapper extends BaseMapper<Submenu> {
    
    /**
     * 通过角色的id 来查询对应的子菜单
     * @param id
     * @return
     */
    List<Integer> getSubmenuByRoleid(Integer id);
    
    /**
     * 通过父级菜单的id删除子级菜单
     * @param id 父级菜单的id
     */
    void delByParentMenuid(Integer id);
    
}
