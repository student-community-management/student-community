package com.manage.control.discuss;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.AgainstReplyDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.AgainstReplyDiscussService;

@Controller
@RequestMapping("ard")
public class AgainstReplyDiscussControl {

    @Autowired
    private AgainstReplyDiscussService againstReplyDiscussService;

    /**
     * 踩回复
     * @param req reqeust
     * @param t AgainstReplyDiscuss对象
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req, @ModelAttribute AgainstReplyDiscuss t) {
        // 从sessio中得到学生对象
        Student stu = (Student) req.getSession().getAttribute("fstu");
        // 反对的学生
        t.setStu(stu);
        againstReplyDiscussService.save(t);
        return "1";
    }

    /**
     * 取消反对
     * @param req
     * @param t
     * @return
     */
    @RequestMapping("delete")
    @ResponseBody
    public String delete(HttpServletRequest req, @ModelAttribute AgainstReplyDiscuss t) {
        // 从sessio中得到学生对象
        Student stu = (Student) req.getSession().getAttribute("fstu");
        // 反对的学生
        t.setStu(stu);
        // 执行删除方法
        againstReplyDiscussService.deleteByObj(t);
        return "1";
    }

}
