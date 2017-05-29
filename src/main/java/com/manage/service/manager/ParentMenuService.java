package com.manage.service.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.Manager;
import com.manage.entity.ParentMenu;
import com.manage.entity.Submenu;
import com.manage.mapper.manager.MgrRoleSubmenuMapper;
import com.manage.mapper.manager.ParentMenuMapper;
import com.manage.mapper.manager.SubmenuMapper;
import com.manage.util.PageParam;

@Service
@Transactional
public class ParentMenuService implements ParentMenuMapper {

    @Autowired
    private ParentMenuMapper parentMenuMapper;

    @Autowired
    private SubmenuMapper submenuMapper;
    
    @Autowired
    private MgrRoleSubmenuMapper mgrRoleSubmenuMapper;

    @Override
    public void delete(Integer id) {
        // 删除父菜单
        parentMenuMapper.delete(id);

        // 删除父菜单后再删除对应的子菜单
        submenuMapper.delByParentMenuid(id);

    }

    @Override
    public void save(ParentMenu t) {
        parentMenuMapper.save(t);

    }

    @Override
    public void update(ParentMenu t) {
        parentMenuMapper.update(t);

    }

    @Override
    public List<ParentMenu> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }
    
    @Override
    public List<ParentMenu> getAllParentMenu() {
        return parentMenuMapper.getAllParentMenu();
    }

    @Override
    public List<ParentMenu> getParentmenuByMgrid(Integer id) {
        return parentMenuMapper.getParentmenuByMgrid(id);
    }

    /**
     * 生成后台管理菜单
     * @param mgr 管理员对象
     * @return
     */
    public List<ParentMenu> getMenus(Manager mgr) {
        // 获得该管理员的父级菜单
        List<ParentMenu> menus = null;

        // 为了保存子菜单
        List<Submenu> submenus = null;
        
        // 当管理员的id为 10000 时则为超级管理员拥有所有权限和菜单
        // 否则再单独获取父菜单和子菜单
        if(mgr.getManagerid() == 10000){
            //先删除之前的所有菜单
            mgrRoleSubmenuMapper.delete(10000);
            //获得所有的父菜单
            menus = this.getAllParentMenu();
            //获取所有的子菜单
            submenus = submenuMapper.getAllSubmenu();
            
        } else {
            // 通过管理员的id查询该管理员的父菜单
            menus = this.getParentmenuByMgrid(mgr.getManagerid());
            
            // 通过该管理员的角色id查询管理员的子菜单
            submenus = submenuMapper.getSubmenuByRoleid(mgr.getMgrRole().getMgrRoleid());
            
        }

        // 用于临时存放符合条件的子菜单
        List<Submenu> temp = null;
        // 循环父菜单
        for (int i = 0; i < menus.size(); i++) {
            temp = new ArrayList<Submenu>();
            // 循环子菜单
            for (int j = 0; j < submenus.size(); j++) {
                // 当子菜单是此父菜单下的菜单时将子菜单加入到父菜单中
                if (menus.get(i).getId() == submenus.get(j).getParentid()) {
                    // 将符合条件的子菜单添加到临时的list中
                    temp.add(submenus.get(j));
                    // 添加过后将此子菜单删除,因为一个子菜单只能有一个父菜单
                    //submenus.remove(j);
                }
            }
            // 将满足条件的子菜单添加到父菜单中
            menus.get(i).setSubmenus(temp);
        }
        // 返回父菜单对象
        return menus;
    }

    @Override
    public ParentMenu queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    
}
