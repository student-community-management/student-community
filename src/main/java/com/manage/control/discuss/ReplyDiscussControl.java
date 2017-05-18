package com.manage.control.discuss;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.ReplyDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.ReplyDiscussService;
import com.manage.util.PageParam;
import com.manage.util.Pagination;

@Controller
@RequestMapping("replyDiscuss")
public class ReplyDiscussControl {

    @Autowired
    private ReplyDiscussService replyDiscussService;
    
    /**
     * 得到讨论回复的数量
     * @param id
     * @return
     */
    @RequestMapping("getReplyDiscussesCount")
    @ResponseBody
    public String getReplyDiscussesCount(Integer discussid) {
        return replyDiscussService.getReplyDiscussesCount(discussid).toString();
    }
    
    
    /**
     * 添加回复
     * @param replyDiscuss 回复话题的对象
     * @param req request
     * @return 执行状态 1为成功
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(@ModelAttribute ReplyDiscuss replyDiscuss, HttpServletRequest req) {

        // 获得学生的id
        Student stu = (Student) req.getSession().getAttribute("fstu");

        // 将stu添加到replyDiscuss中
        replyDiscuss.setStu(stu);

        // 执行添加方法
        replyDiscussService.save(replyDiscuss);

        return "1";
    }

    @RequestMapping("del")
    @ResponseBody
    public String delete(Integer replyDiscussid) {
        replyDiscussService.delete(replyDiscussid);
        return "1";
    }

    /**
     * 回复讨论下的评论
     * @param replyDiscuss ReplyDiscuss 对象
     * @param req Request
     * @return
     */
    @RequestMapping("replyToReplyDiscuss")
    @ResponseBody
    public String replyToReplyDiscuss(@ModelAttribute ReplyDiscuss replyDiscuss,
            HttpServletRequest req) {
        replyDiscuss.setStu((Student) req.getSession().getAttribute("fstu"));
        replyDiscussService.replyToReplyDisucss(replyDiscuss);
        return "1";
    }

    @RequestMapping("getReplies")
    public ModelAndView queryReply(ModelAndView modelAndView, Integer replyDiscussid,
            @ModelAttribute Pagination pagination) {

        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? replyDiscussService.queryReplyToReplyCount(replyDiscussid)
                : pagination.getTotalRecord());
        
        // 每页显示多少条数据
        pagination.setPageSize(pagination.getPageSize() == null ? 10 : pagination.getPageSize());
        
        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<ReplyDiscuss> replyDiscussList = replyDiscussService.queryReplyToReply(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),
                replyDiscussid);

        // 将查询出来的数据封装到ModelAndView中
        modelAndView.addObject("replyDiscussList", replyDiscussList);

        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        
        // 将讨论回答的id添加到ModelAndView中
        modelAndView.addObject("replyDiscussid", replyDiscussid);

        // 要跳转的jsp页面
        modelAndView.setViewName("front/discuss-reply");

        return modelAndView;
    }

    @RequestMapping("getRepliesCount")
    @ResponseBody
    public String getRepliesCount(Integer replyDiscussid) {
        Integer n = replyDiscussService.queryReplyToReplyCount(replyDiscussid);
        return n.toString();
    }
}
