package com.manage.mapper.manager;

import java.util.List;

import com.manage.entity.ParentMenu;
import com.manage.mapper.BaseMapper;

public interface ParentMenuMapper extends BaseMapper<ParentMenu> {
    
    /**
     * 通过管理员的id查询父菜单
     * @param id 管理员的id
     * @return
     */
    List<ParentMenu> getParentmenuByMgrid(Integer id);
    
    /**
     * 获取全部的父菜单
     * 为了生成管理员的菜单的方法
     * @return
     */
    List<ParentMenu> getAllParentMenu();
}
