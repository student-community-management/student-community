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

    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req, ReportDiscuss reportDiscuss) {
        reportDiscuss.setStu((Student) req.getSession().getAttribute("fstu"));
        reportDiscussService.save(reportDiscuss);
        return "1";
    }

    @RequestMapping("del")
    @ResponseBody
    public String del() {
        return "1";
    }

    /**
     * 得到举报的详细内容
     * @param pageParam
     * @param discussid
     * @return
     */
    @RequestMapping("getReportContent")
    @ResponseBody
    public PageData getReportContent(PageParam pageParam, Integer discussid) {
        return reportDiscussService.getPageData(pageParam, discussid);
    }

    @RequestMapping("setStatus")
    @ResponseBody
    public String setReportStatus(@RequestBody List<Integer> ids, Integer unlock, String msg) {

        // 更改处理状态为已处理
        reportDiscussService.setReportDiscussStatus(ids);
        
        //如果确认解封
        if (unlock == 1) {
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
            // status 为1 则为显示
            discussService.setDiscussStatus(ids, 1);
            // 将处理结果保存到数据库
            lockDiscussService.save(list);
        }

        return "ok";
    }
}
