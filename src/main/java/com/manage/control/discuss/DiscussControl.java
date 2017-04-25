package com.manage.control.discuss;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Discuss;
import com.manage.entity.ReplyDiscuss;
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
     * 
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
            @ModelAttribute Pagination pagination, HttpServletRequest req) {

        /**
         * 自动处理的数据
         * 
         * keyWord 在mapper.xml文件中判断如果为null则不会添加到查询条件中
         * pageSize 如果为null或者不符合逻辑(<= 0) 则默认为20
         * 
         */

        Integer stuid = ((Student) req.getSession().getAttribute("fstu")).getStuid();

        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? discussService.getMyAttentionDiscussCount(stuid, pagination.getKeyWord())
                : pagination.getTotalRecord());

        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<Discuss> discussList = discussService.getMyAttentionDiscuss(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()), stuid,
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

    /**
     * 得到讨论的相信信息
     * 包括讨论的详细描述,是否被关注,是否被举报
     * 此讨论下的回答,回答的赞的数量和踩的数量
     * @param modelAndView 数据和视图
     * @param discussid 讨论的id
     * @param req request
     * @param pagination 分页信息
     * @return
     */
    @RequestMapping("getDicussDetail")
    public ModelAndView getDicsusDetail(ModelAndView modelAndView, Integer discussid,
            HttpServletRequest req, @ModelAttribute Pagination pagination) {

        /**
         * 自动处理的数据
         * 
         * keyWord 在mapper.xml文件中判断如果为null则不会添加到查询条件中
         * pageSize 如果为null或者不符合逻辑(<= 0) 则默认为20
         * 
         */

        // 获得学生的id
        Integer stuid = ((Student) req.getSession().getAttribute("fstu")).getStuid();

        // 添加-->详细的讨论信息
        modelAndView.addObject("discuss", discussService.queryOne(discussid));

        // 添加-->是否已经关注此讨论
        modelAndView.addObject("checkAttention", discussService.checkAttention(stuid, discussid));

        // 添加-->是否已经举报过此讨论
        modelAndView.addObject("checkReport", discussService.checkReport(stuid, discussid));

        // 添加-->此讨论关注的人数
        modelAndView.addObject("attentionNum", discussService.getAttentionDiscussNum(discussid));

        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? discussService.getReplyDiscussesCount(discussid) : pagination.getTotalRecord());
        
        System.out.println("pagination.getTotalRecord()====="+pagination.getTotalRecord());
        
        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<ReplyDiscuss> replyDiscussList = discussService.getReplyDiscusses(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()), discussid);

        // 将判断是否点赞/踩的变量赋值到回复中
        // 如果此讨论有回复才判断
        if (pagination.getTotalRecord() > 0) {
            for (ReplyDiscuss replyDiscuss : replyDiscussList) {

                // 赞
                replyDiscuss.setCheckPraise(
                        discussService.checkPraiseReply(replyDiscuss.getReplyDiscussid(), stuid));
                // 踩
                replyDiscuss.setCheckAgainst(
                        discussService.checkAgainstReply(replyDiscuss.getReplyDiscussid(), stuid));
            }
        }

        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("replyDiscussList", replyDiscussList);

        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);

        // 设置要跳转的页面
        modelAndView.setViewName("front/discuss-details");

        return modelAndView;
    }
}
