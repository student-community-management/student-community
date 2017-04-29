package com.manage.control.discuss;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.AgainstReplyDiscuss;
import com.manage.entity.AttentionDiscuss;
import com.manage.entity.Discuss;
import com.manage.entity.PraiseReplyDiscuss;
import com.manage.entity.ReplyDiscuss;
import com.manage.entity.Student;
import com.manage.mapper.discuss.AgainstReplyDiscussMapper;
import com.manage.mapper.discuss.PraiseReplyDiscussMapper;
import com.manage.service.discuss.AttentionDiscussService;
import com.manage.service.discuss.DiscussService;
import com.manage.service.discuss.ReplyDiscussService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
import com.manage.util.Pagination;

@Controller
@RequestMapping("discuss/")
public class DiscussControl {

    @Autowired
    private DiscussService discussService;

    @Autowired
    private PraiseReplyDiscussMapper praiseReplyDiscussMapper;

    @Autowired
    private AgainstReplyDiscussMapper againstReplyDiscussMapper;

    @Autowired
    private AttentionDiscussService attentionDiscussService;

    @Autowired
    private ReplyDiscussService replyDiscussService;
    
    @RequestMapping("save")
    @ResponseBody
    public String save(HttpServletRequest req, @ModelAttribute Discuss discuss) {
        
        //获得学生对象
        discuss.setStu((Student) req.getSession().getAttribute("fstu"));
        //执行添加方法
        discussService.save(discuss);
        return "1";
    }

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
        modelAndView.setViewName("front/discuss-choiceness");
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
    public ModelAndView getDicsusDetail(ModelAndView modelAndView, @ModelAttribute Discuss discuss,
            HttpServletRequest req, @ModelAttribute Pagination pagination) {

        /**
         * 自动处理的数据
         * 
         * keyWord 在mapper.xml文件中判断如果为null则不会添加到查询条件中
         * pageSize 如果为null或者不符合逻辑(<= 0) 则默认为20
         * 
         */

        // 获得学生的id
        Student stu = (Student) req.getSession().getAttribute("fstu");

        // 得到此讨论的详细信息
        discuss = discussService.queryOne(discuss.getDiscussid());

        // 添加-->详细的讨论信息
        modelAndView.addObject("discuss", discuss);

        AttentionDiscuss attentionDiscuss = new AttentionDiscuss();
        attentionDiscuss.setStu(stu);
        attentionDiscuss.setDiscuss(discuss);

        // 添加-->是否已经关注此讨论
        modelAndView.addObject("checkAttention",
                attentionDiscussService.checkAttention(attentionDiscuss));

        // 添加-->是否已经举报过此讨论
        modelAndView.addObject("checkReport",
                discussService.checkReport(stu.getStuid(), discuss.getDiscussid()));

        // 添加-->此讨论关注的人数
        modelAndView.addObject("attentionNum",
                attentionDiscussService.getAttentionDiscussNum(discuss.getDiscussid()));

        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? discussService.getReplyDiscussesCount(discuss.getDiscussid())
                : pagination.getTotalRecord());

        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<ReplyDiscuss> replyDiscussList = replyDiscussService.getReplyDiscusses(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),
                discuss.getDiscussid());

        PraiseReplyDiscuss prd = null;
        AgainstReplyDiscuss ard = null;

        // 将判断是否点赞/踩的变量赋值到回复中
        // 如果此讨论有回复才判断
        if (pagination.getTotalRecord() > 0) {
            for (ReplyDiscuss replyDiscuss : replyDiscussList) {

                prd = new PraiseReplyDiscuss(stu, replyDiscuss);
                ard = new AgainstReplyDiscuss(stu, replyDiscuss);

                // 赞
                replyDiscuss.setCheckPraise(praiseReplyDiscussMapper.checkPraiseReply(prd));

                // 踩
                replyDiscuss.setCheckAgainst(againstReplyDiscussMapper.checkAgainstReply(ard));

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
    
    @RequestMapping("getReportDiscusses")
    @ResponseBody
    public PageData getReportDiscusses(PageParam pageParam, String kw){
        return discussService.getPageData(pageParam, kw);
    }
    
    
}
