package com.manage.control.activity;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Activity;
import com.manage.entity.ReplyActivity;
import com.manage.entity.ReportActivity;
import com.manage.entity.StuActivity;
import com.manage.service.activity.ActivityService;
import com.manage.service.activity.ReplyActivityService;
import com.manage.service.activity.ReportActivityService;
import com.manage.util.PageParam;
import com.manage.util.Pagination;

@Controller
public class ActivityController {
    
    @Autowired
    private ActivityService activityService;// 活动
    @Autowired
    private ReportActivityService reportActivityService;// 举报活动
    @Autowired
    private ReplyActivityService replyActivityService;// 活动评论
    
    /* @InitBinder //时间转化
     protected void initBinder(WebDataBinder binder) {
     SimpleDateFormat dateFormat = new
     SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
     binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,
     true)); }*/
     
    /**
     * 
     * 查询所有活动(分页)
     * @param modelAndView
     * @param pagination
     * @return
     */
    @RequestMapping("getActivity")
    public ModelAndView getActivity(ModelAndView modelAndView, @ModelAttribute Pagination pagination) {
        // 当前时间获取，为时间比较做准备
        String datetime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()); // 获取系统时间
        modelAndView.addObject("currentTime", datetime);
        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? activityService.getCount(pagination.getKeyWord()) : pagination.getTotalRecord());
        // 当前页
        pagination.setCurrentPage(pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<Activity> activityList = activityService.queryAll(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()), pagination.getKeyWord());
        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("activityList", activityList);
        System.out.println(activityList.get(0).getActivityDate());
        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        // 前台选中哪个tabs选项
        modelAndView.addObject("choose", 1);
        // 将信息数据添加到ModelAndView中
        modelAndView.setViewName("front/activity");
        return modelAndView;
        // 跳转到你想要的路径
    }

    /**
     * 详细信息活动注意事项
     * @param ActId
     * @param modelAndView
     * @param pagination
     * @return
     */
    @RequestMapping("getlistActivityAttention")
    public ModelAndView getlistActivityAttention(Integer ActId, ModelAndView modelAndView,
            @ModelAttribute Pagination pagination) {
        Activity activity = activityService.queryOne(ActId);
        Activity activityvalidateFlag = activityService.validateFlag(ActId);// 查询是否参加活动
        ReportActivity reportActivity = reportActivityService.selectreportActivity(ActId);// 查询是否举报活动
        modelAndView.addObject("activityvalidateFlag", activityvalidateFlag);
        modelAndView.addObject("activity", activity);
        modelAndView.addObject("choose", 1);
        modelAndView.addObject("reportActivity", reportActivity);
        modelAndView.setViewName("front/activity_home");
        return modelAndView;
    }

    /**
     * 详细信息活动已经报名人员
     * @param ActId
     * @param modelAndView
     * @param pagination
     * @return
     */
    @RequestMapping("getlistActivityTaken")
    public ModelAndView getlistActivityTaken(Integer ActId, ModelAndView modelAndView,
            @ModelAttribute Pagination pagination) {
        Activity activity = activityService.queryOne(ActId);
        List<Activity> aclist = activityService.getAllStudentByActId(ActId);// 已经参加活动的人
        Activity activityvalidateFlag = activityService.validateFlag(ActId);// 查询是否参加活动
        ReportActivity reportActivity = reportActivityService.selectreportActivity(ActId);// 查询是否举报活动
        modelAndView.addObject("activityvalidateFlag", activityvalidateFlag);
        modelAndView.addObject("activity", activity);
        modelAndView.addObject("choose", 2);
        modelAndView.addObject("aclist", aclist);
        modelAndView.addObject("reportActivity", reportActivity);
        modelAndView.setViewName("front/activity_profile");
        return modelAndView;
    }

    /**
     * 详细信息评论
     * @param ActId
     * @param modelAndView
     * @param pagination
     * @return
     */
    @RequestMapping("getlistActivityReply")
    public ModelAndView getlistActivityReply(Integer ActId, ModelAndView modelAndView,
            @ModelAttribute Pagination pagination) {
        Activity activity = activityService.queryOne(ActId);
        Activity activityvalidateFlag = activityService.validateFlag(ActId);// 查询是否参加活动
        ReportActivity reportActivity = reportActivityService.selectreportActivity(ActId);// 查询是否举报活动
        // 评论回复
        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? replyActivityService.selectReplyActivityCount(ActId, pagination.getKeyWord())
                : pagination.getTotalRecord());
        // 当前页
        pagination.setCurrentPage(pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        List<ReplyActivity> replyActivitylist = replyActivityService.selectReplyActivity(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()), ActId, pagination.getKeyWord());// 查询评论活动的
        modelAndView.addObject("replyActivitylist", replyActivitylist);
        // 分页属性
        modelAndView.addObject("pagination", pagination);
        modelAndView.addObject("activityvalidateFlag", activityvalidateFlag);
        modelAndView.addObject("activity", activity);
        modelAndView.addObject("choose", 3);
        modelAndView.addObject("reportActivity", reportActivity);
        modelAndView.setViewName("front/activity_messages");
        return modelAndView;
    }

    /**
     * 
     * 准备发布活动
     * @return
     */
    @RequestMapping("addactivitypre")
    public ModelAndView addActivitypre() {
        return activityService.addActivityPre();
    }

    /**
     * @ModelAttribute全局变量
     * @param 发布活动
     * @param perId
     * @param model
     */
    @RequestMapping("addActivity")
    @ResponseBody
    // 
    public void addActivity(@ModelAttribute Activity activity, String perId, Model model) {
      activityService.save(activity);
    }

    /**
     * 修改活动提前准备
     * @param actId
     * @return
     */
    @RequestMapping("updateActivityPre")
    public ModelAndView updateActivityPre(Integer actId) {
        ModelAndView mv = new ModelAndView();
        mv = this.addActivitypre();// 获取社团类型//活动类型
        Activity activity = activityService.queryOne(actId);
        mv.addObject("activity", activity);
        mv.setViewName("front/updateActivity");
        return mv;
    }

    /**
     * 修改活动信息
     * @param activity
     * @param model
     * @return 前台给后台传值@ModelAttribute
     */
    @RequestMapping("updateActivity")
    @ResponseBody
    // 
    public void UpdateActivity(@ModelAttribute Activity activity, Model model) {
         activityService.update(activity);
    }

    /**
     * 通过活动的id来取消活动 要删除的活动id封装在list中
     * 
     * @param ids
     * 需要删除的活动的id
     */
    /*
     * @RequestMapping("deleteActivity") public String deleteActivity(Activity
     * activity,Model model,List<Integer> ids){ activityService.delete(ids);;
     * List<Activity> list = activityService.getActivity();
     * model.addAttribute("list", list); return "front/activity"; }
     */
    /**
     * 
     * @param activity
     * @param 申请加入活动
     * @return
     */
    @RequestMapping("applyActivity")
    public String applyActivity(@ModelAttribute StuActivity stuActivity, Model model, Integer ActId) {
       activityService.addActivityPerson(stuActivity);
        return "redirect:getlistActivityTaken.a?ActId=" + stuActivity.getActivityid();
    }
    /**
     * @param 举报活动
     * @param model
     * @param actId
     * @return
     */
    @RequestMapping("reportActivity")
    public String reportActivity(@ModelAttribute ReportActivity reportActivity, Model model, Integer actId) {
        reportActivityService.reportActivity(reportActivity);
        return "redirect:getlistActivityAttention.a?ActId=" + reportActivity.getActivity().getActivityid();
    }

    /**
     * @param replyActivity
     * @param model
     * @param 活动评论,第一次
     * @return
     */
    @RequestMapping("ReplyActivityParent")
    public String ReplyActivityParent(@ModelAttribute ReplyActivity replyActivity, Model model, Integer actId) {
        replyActivityService.ReplyActivityParent(replyActivity);
        System.out.println(replyActivity.getReplyActivityid());
        return "redirect:getlistActivityReply.a?ActId=" + replyActivity.getActivity().getActivityid();
    }

    /**
     * @param replyActivity
     * @param model
     * @param 活动评论,对已经评论的进行回复
     * @return
     */
    @RequestMapping("ReplyActivityChildren")
    @ResponseBody
    public void ReplyActivityChildren(@ModelAttribute ReplyActivity replyActivity, Model model) {
        replyActivityService.ReplyActivityChildren(replyActivity);
    }
}
