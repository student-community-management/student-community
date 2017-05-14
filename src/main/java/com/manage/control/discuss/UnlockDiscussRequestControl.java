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
    public String setStatus(@RequestBody List<Integer> ids, Integer unlock, String msg) {
        // 更改处理状态为已处理
        unlockDiscussRequestService.setStatus(ids);

        // 用List来封装前台获取的数据(LockDiscuss)
        List<LockDiscuss> list = new ArrayList<LockDiscuss>();

        // LockDiscuss对象
        LockDiscuss lockDiscuss = null;
        // 因为是批量处理message是相同的,但是discussid是不同的所以这里需要将
        // 对象保存到list中

        // unlock 为0时 则为不解锁,向前台发出锁定原因信息
        // unlock 为1时 则为解锁,将显示状态设置为显示
        if (unlock == 0) {
            for (int i = 0; i < ids.size(); i++) {
                // 将锁定讨论对象实例化
                lockDiscuss = new LockDiscuss();
                // 将锁定对象中的讨论实例化并添加到锁定讨论对象中
                lockDiscuss.setDiscuss(new Discuss());
                // 因为id不同所以循环将id保存在锁定讨论的对象中
                lockDiscuss.getDiscuss().setDiscussid(ids.get(i));
                // 将锁定信息添加对象中
                lockDiscuss.setMessage(msg);
                // 将锁定讨论对象添加到list中
                list.add(lockDiscuss);
            }
            // 将处理结果保存到数据库
            lockDiscussService.save(list);
        } else if (unlock == 1){//确认解锁
            for (int i = 0; i < ids.size(); i++) {
                // 将锁定讨论对象实例化
                lockDiscuss = new LockDiscuss();
                // 将锁定对象中的讨论实例化并添加到锁定讨论对象中
                lockDiscuss.setDiscuss(new Discuss());
                // 因为id不同所以循环将id保存在锁定讨论的对象中
                lockDiscuss.getDiscuss().setDiscussid(ids.get(i));
                // 将锁定讨论对象添加到list中
                list.add(lockDiscuss);
            }
            // 确认解锁将status设置为1
            // status 为1 则为显示
            discussService.setDiscussStatus(ids, 1);
        }

        return "ok";
    }

}
