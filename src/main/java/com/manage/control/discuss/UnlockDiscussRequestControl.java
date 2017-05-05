package com.manage.control.discuss;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Discuss;
import com.manage.entity.LockDiscuss;
import com.manage.entity.UnlockDiscussRequest;
import com.manage.service.discuss.DiscussService;
import com.manage.service.discuss.LockDiscussService;
import com.manage.service.discuss.UnlockDiscussRequestService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("udr/")
public class UnlockDiscussRequestControl {

    @Autowired
    private UnlockDiscussRequestService unlockDiscussRequestService;
    
    @Autowired
    private LockDiscussService lockDiscussService;
    
    @Autowired
    private DiscussService discussService;

    public String save(UnlockDiscussRequest unlockDiscussRequest) {
        unlockDiscussRequestService.save(unlockDiscussRequest);
        return "1";
    }

    /**
     * 查看讨论的解锁 请求(未处理的)
     * @param pageParam
     * @param kw
     * @return
     */
    @RequestMapping("query")
    @ResponseBody
    public PageData query(PageParam pageParam, String kw) {
        return unlockDiscussRequestService.getPageData(pageParam, kw);
    }

    /**
     * 
     * @param ids 需要处理的 UnlockDiscussRequest的id
     * @param status 如果处理结果0则是不通过,结果为1时则为通过(int 类型,如果没有接收则默认为未通过)
     * @return
     */
    @RequestMapping("setStatus")
    @ResponseBody
    public String setStatus(@RequestBody List<Integer> ids, Integer lock, String msg) {
        // 更改处理状态为已处理
        unlockDiscussRequestService.setStatus(ids);

        if (lock == 1) {
            // 用List来封装前台获取的数据(LockDiscuss)
            List<LockDiscuss> list = new ArrayList<LockDiscuss>();
            // LockDiscuss对象
            LockDiscuss lockDiscuss = new LockDiscuss();
            // 因为是批量处理message是相同的,但是discussid是不同的所以这里需要将
            // 对象保存到list中
            lockDiscuss.setDiscuss(new Discuss());
            for (int i = 0; i < ids.size(); i++) {
                lockDiscuss.getDiscuss().setDiscussid(ids.get(i));
                lockDiscuss.setMessage(msg);
                list.add(lockDiscuss);
            }
            // status 为0 则为不显示
            discussService.setDiscussStatus(ids, 0);
            // 将处理结果保存到数据库
            lockDiscussService.save(list);
        }

        return "ok";
    }

}
