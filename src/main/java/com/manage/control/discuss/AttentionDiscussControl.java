package com.manage.control.discuss;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.AttentionDiscuss;
import com.manage.entity.Student;
import com.manage.service.discuss.AttentionDiscussService;

@Controller
@RequestMapping("ad/")
public class AttentionDiscussControl {

    @Autowired
    private AttentionDiscussService attentionDiscussService;
    
    /**
     * 添加关注
     * @param req
     * @param attentionDiscuss
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req, @ModelAttribute AttentionDiscuss attentionDiscuss) {
        //从session中获取学生对象
        Student stu = (Student) req.getSession().getAttribute("fstu");
        attentionDiscuss.setStu(stu);
        // 执行添加方法
        attentionDiscussService.save(attentionDiscuss);
        return "1";
    }
    
    /**
     * 取消关注
     * @param req
     * @param attentionDiscuss
     * @return
     */
    @RequestMapping("del")
    @ResponseBody
    public String del(HttpServletRequest req, @ModelAttribute AttentionDiscuss attentionDiscuss) {
      //从session中获取学生对象
        Student stu = (Student) req.getSession().getAttribute("fstu");
        attentionDiscuss.setStu(stu);
        //执行删除方法
        attentionDiscussService.delete(attentionDiscuss);
        return "1";
    }

}
