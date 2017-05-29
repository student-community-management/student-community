package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.mapper.manager.MgrRoleSubmenuMapper;

@Service
@Transactional
public class MgrRoleSubmenuService implements MgrRoleSubmenuMapper {

    @Autowired
    private MgrRoleSubmenuMapper mgrRoleSubmenuMapper;
    
    @Override
    public void save(Integer roleid, List<Integer> submenuids) {
        if(submenuids != null && submenuids.size() > 0){
            mgrRoleSubmenuMapper.save(roleid, submenuids);
        }
    }

    @Override
    public void delete(Integer roleid) {
        mgrRoleSubmenuMapper.delete(roleid);
    }

}
