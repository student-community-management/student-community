package com.manage.service.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Manager;
import com.manage.mapper.manager.ManagerMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class ManagerService implements ManagerMapper,BaseService<Manager> {

    @Autowired
    private ManagerMapper managerMapper;
    
    @Override
    public List<Manager> queryAll(PageParam pageParam, String keyWord) {
        return managerMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Manager queryOne(Integer id) {
        return managerMapper.queryOne(id);
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(Manager t) {
        managerMapper.save(t);
    }

    @Override
    public void update(Manager t) {
        managerMapper.update(t);
    }

    @Override
    public int getCount(String keyWord) {
        return managerMapper.getCount(keyWord);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord),this.queryAll(pageParam, keyWord));
    }

    @Override
    public void updatePwd(Manager manager) {
        managerMapper.updatePwd(manager);
    }

    @Override
    public void deleteMany(List<Integer> ids) {
        managerMapper.deleteMany(ids);
    }
    
    
    @Override
    public void setRole(Integer roleid) {
        // 在 MgrRoleService 中调用
        // 此方法并不是一个单独模块
        
    }

    @Override
    public Integer login(Manager manager) {
       
        return managerMapper.login(manager);
    }

}
