package com.manage.control.discuss;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.ReplyDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.ReplyDiscussService;

@Controller
@RequestMapping("replyDiscuss")
public class ReplyDiscussControl {
    
    @Autowired
    private ReplyDiscussService replyDiscussService;

    /**
     * 添加回复
     * @param replyDiscuss 回复话题的对象
     * @param req request
     * @return 执行状态 1为成功
     */
    @RequestMapping("save")
    @ResponseBody
    public String replyDisscuss(@ModelAttribute ReplyDiscuss replyDiscuss, HttpServletRequest req) {

        // 获得学生的id
        Student stu = (Student) req.getSession().getAttribute("fstu");

        // 将stu添加到replyDiscuss中
        replyDiscuss.setStu(stu);

        // 执行添加方法
        replyDiscussService.save(replyDiscuss);

        return "1";
    }

}
