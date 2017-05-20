package com.manage.control.discuss;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.service.discuss.LockDiscussService;

@Controller
@RequestMapping("ld/")
public class LockDiscussControl {

    @Autowired
    private LockDiscussService lockDiscussService;
    
    /**
     * 如果讨论被锁定,查看锁定的原因
     * produces={"text/json;charset=UTF-8"}
     * 设置返回值类型,和编码
     * @param discussid
     * @return
     */
    @RequestMapping(value="getLockInfo")
    @ResponseBody
    public Map<String,String> getLockInfo(Integer discussid){
        return lockDiscussService.getLockInfo(discussid);
    }
    
    
}
