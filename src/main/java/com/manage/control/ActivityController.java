package com.manage.control;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.service.ActivityService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Controller
@Transactional
public class ActivityController {
    @Autowired
    private ActivityService activityService;//活动
    @InitBinder
    //时间转化
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
    
    //查询所有活动(分页)
    //访问路径
    @RequestMapping("getActivity")
    public String getActivity(Model model,Activity activity, PageParam page){
        if(page == null){
            page.setRows(5);//每页显示行数
            page.setPage(1);
        }
        //当前时间获取，为时间比较做准备
        String datetime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()); //获取系统时间 
        model.addAttribute("currentTime",datetime);
        //无条件查询
        PageData data = activityService.getAllActivity(activity, page);
        model.addAttribute("currentPage",page.getPage());//当前页
        model.addAttribute("list",data.getRows());//所有数据
        model.addAttribute("Total",data.getTotal());//总行数
        model.addAttribute("startIndex",page.getStartIndex());//每页开始的下标
        //跳转到你想要的路径
        return "front/activity";
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
       Integer data = activityService.insertActivity(activity);
       if(data>0){
           return "ok";
       }else{
           return "no";
       }
    }
    //修改活动提前准备
    @RequestMapping("updateActivityPre")
    //@ResponseBody
    public ModelAndView updateActivityPre(Integer actId){
        ModelAndView mv = new ModelAndView();
        mv = this.addActivitypre();//获取社团类型//活动类型
        Activity activity = activityService.getActivityOne(actId);
        mv.addObject("activity",activity);
        mv.setViewName("front/updateActivity");
        return mv;
    }
    //修改活动信息
    @RequestMapping("updateActivity")
    @ResponseBody
    //前台给后台传值@ModelAttribute
    public String  UpdateActivity(@ModelAttribute Activity activity,Model model){
        Integer data = activityService.UpdateActivity(activity); 
        if(data>0){
            return "ok";
        }else{
            return "no";
        }
    }
    /**
     * 通过活动的id来取消活动
     * 要删除的活动id封装在list中
     * @param ids 需要删除的活动的id
     * 
     */
    @RequestMapping("deleteActivity")
    public String deleteActivity(Activity activity,Model model,List<Integer> ids){
       activityService.delete(ids);;
       List<Activity> list = activityService.getActivity();
       model.addAttribute("list", list);
        return "front/activity";
    }
}
