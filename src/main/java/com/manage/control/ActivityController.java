package com.manage.control;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.service.ActivityService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Controller
public class ActivityController {
    @Autowired
    private ActivityService activityService;//活动
    //查询所有活动(分页)
    //访问路径
    @RequestMapping("getActivity")
    public String getActivity(Model model,Activity activity, PageParam page){
        if(page == null){
            page.setRows(5);//每页显示行数
            page.setPage(1);
            /*page.setCurrPage(1); */
        }
        //无条件查询
        PageData data = activityService.getAllActivity(activity, page);
        model.addAttribute("currentPage",page.getPage());//当前页
        model.addAttribute("list",data.getRows());//所有数据
        model.addAttribute("Total",data.getTotal());//总行数
        model.addAttribute("startIndex",page.getStartIndex());//每页开始的下标
        //跳转到你想要的路径
        return "back/activity";
    }
  //准备发布活动
    @RequestMapping("addactivitypre")
    public ModelAndView addActivitypre(){
        return activityService.addActivityPre();
    }
    
  //@ModelAttribute全局变量
    @RequestMapping("addActivity")
    @ResponseBody
    public String addActivity(@ModelAttribute Activity activity,Model model){
        System.out.println(activity.getActivityContent());
       //Integer data = activityService.insertActivity(activity);
//       if(data>0){
//           List<Activity> list = service.getActivity();
//           model.addAttribute("list", list);
//           return "back/activity";
//          /* return "redirect:back/activity";*/
//       }else{
//           return "redirect:addactivitypre.a";
//       }
        return null;
    }
    //修改活动提前准备
    @RequestMapping("updateActivityPre")
    //@ResponseBody
    public ModelAndView updateActivityPre(Integer actId){
        ModelAndView mv = new ModelAndView();
        mv = this.addActivitypre();//获取社团类型//活动类型
        Activity activity = activityService.getActivityOne(actId);
        mv.addObject("activity",activity);
        mv.setViewName("back/updateActivity");
        return mv;
    }
    //修改活动信息
    @RequestMapping("updateActivity")
    //前台给后台传值@ModelAttribute
    public String  UpdateActivity(@ModelAttribute Activity activity,Model model){
        Integer result = activityService.UpdateActivity(activity); 
        if(result>0){ 
            model.addAttribute("state", 1);//成功
        }else{
            model.addAttribute("state", 0);//失败
        }
        return "back/activity";
    }
    @RequestMapping("deleteActivity")
    public String deleteActivity(Activity activity,Model model,Integer actId){
       Integer result = activityService.deleteActivity(actId);
       System.out.println("result"+result);
       if(result>0){ 
           model.addAttribute("state", 1);//成功
       }else{
           model.addAttribute("state", 0);//失败
       }
       List<Activity> list = activityService.getActivity();
       model.addAttribute("list", list);
        return "back/activity";
    }
}
