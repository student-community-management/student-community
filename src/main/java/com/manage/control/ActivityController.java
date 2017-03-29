package com.manage.control;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Activity;
import com.manage.service.ActivityService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Controller
public class ActivityController {
    @Autowired
    private ActivityService service;//活动
    //查询所有活动(分页)
    //访问路径
    @RequestMapping("getActivity")
    public String getActivity(Model model,Activity activity,@ModelAttribute PageParam page){
        if(page == null){
            page.setRows(5);//每页显示行数
            page.setCurrPage(1); 
        }
        //无条件查询
        PageData data = service.getActivity(activity, page);
        /*model.addAttribute("currentPage",page.getCurrPage());//当前页
*/        model.addAttribute("list",data.getRows());//所有数据
        model.addAttribute("Total",data.getTotal());//总行数
        /*model.addAttribute("startIndex",page.getStartIndex());//每页开始的下标
*/        //跳转到你想要的路径
        return "front/activity";
    }
    //修改活动提前准备
   /* public ModelAndView updateActivityPre(Integer activityId){
        ModelAndView mv = new ModelAndView();
        mv = this
    }*/
    //修改活动信息
    @RequestMapping("updateactivity")
    public String  UpdateActivity(Activity activity,Model model){
        Integer result = service.UpdateActivity(activity);
        if(result>0){
            model.addAttribute("state", 1);//成功
        }else{
            model.addAttribute("state", 0);//失败
        }
        return "/front/activity";
    }
}
