package com.manage.control.discuss;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.PraiseReplyDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.PraiseReplyDiscussService;

@Controller
@RequestMapping("prd")
public class PraiseReplyDiscussControl {

    @Autowired
    private PraiseReplyDiscussService praiseReplyDiscussService;

    /**
     * 为回复点赞
     * @param req request
     * @param t PraiseReplyDiscuss 对象
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req, @ModelAttribute PraiseReplyDiscuss t) {
        Student stu = (Student) req.getSession().getAttribute("fstu");
        t.setStu(stu);
        praiseReplyDiscussService.save(t);
        return "1";
    }
    
    /**
     * 为回复点赞
     * @param req request
     * @param t PraiseReplyDiscuss 对象
     * @return
     */
    @RequestMapping("delete")
    @ResponseBody
    public String delete(HttpServletRequest req, @ModelAttribute PraiseReplyDiscuss t) {
        Student stu = (Student) req.getSession().getAttribute("fstu");
        t.setStu(stu);
        praiseReplyDiscussService.deleteByObj(t);
        return "1";
    }

}
