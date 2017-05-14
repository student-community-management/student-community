package com.manage.mapper.manager;

import java.util.List;

import com.manage.entity.Submenu;
import com.manage.mapper.BaseMapper;

public interface SubmenuMapper extends BaseMapper<Submenu> {
    
    /**
     * 通过角色的id 来查询对应的子菜单的id
     * @param id 角色的id
     * @return
     */
    List<Integer> getSubmenuidByRoleid(Integer id);
    
    /**
     * 通过角色的id 来查询对应的子菜单的全部信息
     * 包括(id,菜单名称,url和父菜单id)
     * @param id 角色的id
     * @return
     */
    List<Submenu> getSubmenuByRoleid(Integer id);
    
    /**
     * 通过父级菜单的id删除子级菜单
     * @param id 父级菜单的id
     */
    void delByParentMenuid(Integer id);
    
    /**
     * 查询管理员的菜单数量
     * 如果为0则终止登陆
     * @param id 管理员的id
     * @return
     */
    Integer getSubmenuCountByMgrid(Integer id);
    
    /**
     * 获取全部的子菜单
     * 为了生成超级管理员的菜单方法
     * @return
     */
    List<Submenu> getAllSubmenu();
    
}
