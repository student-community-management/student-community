package com.manage.control.discuss;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Discuss;
import com.manage.entity.LockDiscuss;
import com.manage.entity.ReportDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.DiscussService;
import com.manage.service.discuss.LockDiscussService;
import com.manage.service.discuss.ReportDiscussService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("rd/")
public class ReportDiscussControl {
    
    @Autowired
    private ReportDiscussService reportDiscussService;

    @Autowired
    private DiscussService discussService;

    @Autowired
    private LockDiscussService lockDiscussService;
    
    /**
     * 执行举报方法
     * @param req HttpServletRequest
     * @param reportDiscuss 举报方法对象
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req, ReportDiscuss reportDiscuss) {
        reportDiscuss.setStu((Student) req.getSession().getAttribute("fstu"));
        reportDiscussService.save(reportDiscuss);
        return "1";
    }
    
    /**
     * 得到举报的详细内容
     * @param pageParam 分页参数
     * @param discussid 讨论的id
     * @return
     */
    @RequestMapping("getReportContent")
    @ResponseBody
    public PageData getReportContent(PageParam pageParam, Integer discussid) {
        return reportDiscussService.getPageData(pageParam, discussid);
    }
    
    /**
     * 处理被举报的讨论
     * @param ids 要处理的讨论的id
     * @param lock 是否锁定 1为锁定 0为不锁定
     * @param msg 锁定信息
     * @return
     */
    @RequestMapping("setStatus")
    @ResponseBody
    public String setReportStatus(@RequestBody List<Integer> ids, Integer lock, String msg) {

        // 更改处理状态为已处理
        reportDiscussService.setReportDiscussStatus(ids);
        
        //如果确认锁定
        if (lock == 1) {
            // 用List来封装前台获取的数据(LockDiscuss)
            List<LockDiscuss> list = new ArrayList<LockDiscuss>();
            // LockDiscuss对象
            LockDiscuss lockDiscuss = null;
            // 因为是批量处理message是相同的,但是discussid是不同的所以这里需要将
            // 对象保存到list中
            for (int i = 0; i < ids.size(); i++) {
                //将锁定讨论对象实例化
                lockDiscuss = new LockDiscuss();
                //将锁定对象中的讨论实例化并添加到锁定讨论对象中
                lockDiscuss.setDiscuss(new Discuss());
                //因为id不同所以循环将id保存在锁定讨论的对象中
                lockDiscuss.getDiscuss().setDiscussid(ids.get(i));
                //将锁定信息添加对象中
                lockDiscuss.setMessage(msg);
                //将锁定讨论对象添加到list中
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
