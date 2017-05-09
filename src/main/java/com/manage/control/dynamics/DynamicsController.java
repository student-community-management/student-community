package com.manage.control.dynamics;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.manage.entity.Dynamics;
import com.manage.service.dynamics.DynamicsService;
import com.manage.util.PageParam;
import com.manage.util.Pagination;
@Controller
public class DynamicsController {
    @Autowired
    private  DynamicsService dynamicsService;
    @RequestMapping("getAllDynamics")
    public ModelAndView getAllDynamics(ModelAndView modelAndView, @ModelAttribute Pagination pagination){
        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? dynamicsService.getCount(pagination.getKeyWord()) : pagination.getTotalRecord());
        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());

        // 分页数据
        List<Dynamics> dynamicsList = dynamicsService.queryAll(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),
                pagination.getKeyWord());

        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("dynamicsList", dynamicsList);
        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        // 前台选中哪个tabs选项
        modelAndView.addObject("choose", 1);
        // 将信息数据添加到ModelAndView中
        modelAndView.setViewName("front/dynamics-info");
        return modelAndView;
    }
    //自己的动态
    @RequestMapping("getMyselfAllDynamics")
    public ModelAndView getMyselfAllDynamics(ModelAndView modelAndView, @ModelAttribute Pagination pagination,HttpServletRequest request,Integer id){
        /*Integer stuid = ((Student)request.getSession().getAttribute("学生Id")).getStuid();//得到学生的Id
*/        // 信息总数
        pagination.setTotalRecord(pagination.getTotalRecord() == null
                ? dynamicsService.getMyselfAllDynamicsCount(id,pagination.getKeyWord()) : pagination.getTotalRecord());
        // 当前页
        pagination.setCurrentPage(
                pagination.getCurrentPage() == null ? 1 : pagination.getCurrentPage());
        // 分页数据
        List<Dynamics> MyselfAllDynamicsList = dynamicsService.getMyselfAllDynamics(
                new PageParam(pagination.getCurrentPage(), pagination.getPageSize()),id,
                pagination.getKeyWord());

        // 将信息数据添加到ModelAndView中
        modelAndView.addObject("MyselfAllDynamicsList", MyselfAllDynamicsList);
        // 将分页数据添加到ModelAndView中
        modelAndView.addObject("pagination", pagination);
        // 前台选中哪个tabs选项
        modelAndView.addObject("choose", 2);
        // 将信息数据添加到ModelAndView中
        modelAndView.setViewName("front/dynamics-myself");
        return modelAndView;
    }

}
