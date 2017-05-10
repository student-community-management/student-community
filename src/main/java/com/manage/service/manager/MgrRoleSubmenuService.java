package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.mapper.manager.MgrRoleSubmenuMapper;

@Service
public class MgrRoleSubmenuService implements MgrRoleSubmenuMapper {

    @Autowired
    private MgrRoleSubmenuMapper mgrRoleSubmenuMapper;
    
    @Override
    public void save(Integer roleid, List<Integer> submenuids) {
        mgrRoleSubmenuMapper.save(roleid, submenuids);
    }

    @Override
    public void delete(Integer roleid) {
        mgrRoleSubmenuMapper.delete(roleid);
    }

}
