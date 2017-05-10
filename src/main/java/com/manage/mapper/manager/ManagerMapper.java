package com.manage.mapper.manager;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Manager;
import com.manage.mapper.BaseMapper;

public interface ManagerMapper extends BaseMapper<Manager> {
    
    /**
     * 通过id来修改密码
     * @param manager Manager 对象
     */
    void updatePwd(Manager manager);
    
    /**
     * 一次删除多条信息
     * @param ids 多条信息的id
     */
    void deleteMany(@Param("ids") List<Integer> ids);
    
    /**
     * 当角色被删除时,
     * 将相对应的管理人员的角色设置成null
     * 
     * @param roleid
     */
    void setRole(Integer roleid);
    
}
