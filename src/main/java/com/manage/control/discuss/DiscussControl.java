package com.manage.control.discuss;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Discuss;
import com.manage.entity.Student;
import com.manage.service.discuss.DiscussService;
import com.manage.util.PageParam;
import com.manage.util.Pagination;

@Controller
@RequestMapping("discuss/")
public class DiscussControl {

    @Autowired
    private DiscussService discussService;
    /**
     * 查询所有的讨论并按照时间倒序来排序
     * @param modelAndView  数据和视图
     * @param pagination 分页的各种参数
     * @return 要跳转的jsp页面和数据
     */
    @RequestMapping("getAllDiscuss")
    public ModelAndView getAllDiscuss(ModelAndView modelAndView,
            @ModelAttribute Pagination pagination) {
        /**
         * 自动处理的数据
         * 
         * keyWord 在mapper.xml文件中判断如果为null则不会添加到查询条件中
         * pageSize 如果为null或者不符合逻辑(<= 0) 则默认为20
         * 
         */
        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? discussService.getCount(pagination.getKeyWord()) : pagination.getTotalRecord());

        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<Discuss> discussList = discussService.queryAll(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),
                pagination.getKeyWord());

        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("discussList", discussList);
        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        // 前台选中哪个tabs选项
        modelAndView.addObject("choose", 1);
        // 跳转页面
        modelAndView.setViewName("front/discuss-info");
        return modelAndView;
    }

    /**
     * 查询所有的讨论并回复数量倒序来排序
     * @param modelAndView  数据和视图
     * @param pagination 分页的各种参数
     * @return 要跳转的jsp页面和数据
     */
    @RequestMapping("getChoicenessDiscuss")
    public ModelAndView getChoicenessDiscuss(ModelAndView modelAndView,
            @ModelAttribute Pagination pagination) {
        /**
         * 自动处理的数据
         * 
         * keyWord 在mapper.xml文件中判断如果为null则不会添加到查询条件中
         * pageSize 如果为null或者不符合逻辑(<= 0) 则默认为20
         * 
         */

        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? discussService.getCount(pagination.getKeyWord()) : pagination.getTotalRecord());

        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<Discuss> discussList = discussService.queryChoicenessDiscuss(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),
                pagination.getKeyWord());

        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("discussList", discussList);
        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        // 前台选中哪个tabs选项
        modelAndView.addObject("choose", 2);
        // 跳转页面
        modelAndView.setViewName("front/discuss-info");
        return modelAndView;
    }

    /**
     * 查询所有的讨论并回复数量倒序来排序
     * @param modelAndView  数据和视图
     * @param pagination 分页的各种参数
     * @return 要跳转的jsp页面和数据
     */
    @RequestMapping("getMyAttentionDiscuss")
    public ModelAndView getMyAttentionDiscuss(ModelAndView modelAndView,
            @ModelAttribute Pagination pagination,HttpServletRequest req) {

        /**
         * 自动处理的数据
         * 
         * keyWord 在mapper.xml文件中判断如果为null则不会添加到查询条件中
         * pageSize 如果为null或者不符合逻辑(<= 0) 则默认为20
         * 
         */
        
        Integer stuid = ((Student) req.getSession().getAttribute("fstu")).getStuid();
        
        System.out.println("stu_id============="+stuid);
        
        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? discussService.getMyAttentionDiscussCount(stuid,pagination.getKeyWord()) : pagination.getTotalRecord());

        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<Discuss> discussList = discussService.getMyAttentionDiscuss(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),stuid,
                pagination.getKeyWord());

        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("discussList", discussList);
        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        // 前台选中哪个tabs选项
        modelAndView.addObject("choose", 3);
        // 跳转页面
        modelAndView.setViewName("front/discuss-aboutme");
        return modelAndView;
    }

}
