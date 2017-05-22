package com.manage.control.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.service.manager.MgrRoleSubmenuService;

@Controller
@RequestMapping("mrs/")
public class MgrRoleSubmenuControl {

    @Autowired
    private MgrRoleSubmenuService mgrRoleSubmenuService;

    /**
     * 保存新的菜单
     * 
     * 保存新的菜单,要先删除旧的菜单
     * 
     * @param ids
     * @param roleid
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(@RequestBody List<Integer> ids, Integer roleid) {
        // 先删除旧的菜单
        mgrRoleSubmenuService.delete(roleid);
        // 在添加新的菜单
        mgrRoleSubmenuService.save(roleid, ids);
        return "1";
    }

}
