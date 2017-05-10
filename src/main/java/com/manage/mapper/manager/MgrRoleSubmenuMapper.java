package com.manage.mapper.manager;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MgrRoleSubmenuMapper {
    
    /**
     * 添加角色和子菜单的对应关系
     * @param roleid
     * @param submenuids
     */
    void save(@Param("roleid") Integer roleid, @Param("submenuids") List<Integer> submenuids);
    
    /**
     * 通过角色id删除其对应的子菜单
     * @param roleid
     */
    void delete(Integer roleid);

}
