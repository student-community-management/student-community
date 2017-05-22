package com.manage.control.student;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Community;
import com.manage.entity.StuCommRequest;
import com.manage.entity.Student;
import com.manage.service.student.CommunityService;
import com.manage.service.student.StuCommRequestService;
import com.manage.service.student.StuCommunityService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("comm/")
public class CommunityControl {

    @Autowired
    private CommunityService communityService;
    
    @Autowired
    private StuCommunityService stuCommunityService;
    
    @Autowired
    private StuCommRequestService stuCommRequestService;
    
    /**
     * 添加学生请求加入社团方法
     * @param req
     * @param commid
     * @return
     */
    @RequestMapping("joinCommRequest")
    @ResponseBody
    public String joinCommRequest(HttpServletRequest req,Integer commid){
        
        // 从session中取得学生对象
        Student stu = (Student)req.getSession().getAttribute("fstu");
        
        // 学生加入社团请求表
        StuCommRequest scr = new StuCommRequest();
        
        scr.setStuid(stu.getStuid());
        scr.setCommid(commid);
        
        // 执行添加方法
        stuCommRequestService.save(scr);
        
        return "1";
    }
    
    /**
     * 查询我还没加入的社团
     * @param model ModelAndView
     * @param req 
     * @return
     */
    @RequestMapping("getNewCommunity")
    public ModelAndView getNewCommunity(ModelAndView model,HttpServletRequest req){
        
        // 从 session中取得学生对象
        Student stu = (Student)req.getSession().getAttribute("fstu");
        // 得到学生还未添加的社团,并标记是否申请过
        List<Community> commList = communityService.getNewCommunity(stu.getStuid());
        
        model.addObject("commList", commList);
        
        model.setViewName("front/my-new-community");
        
        return model;
    }
    
    /**
     * 忽略请求,只是将处理请求改成已经处理
     * @param ids
     * @param commid
     * @return
     */
    @RequestMapping("ignore")
    @ResponseBody
    public String ignore(@RequestBody List<Integer> ids, Integer commid) {
        stuCommRequestService.setStatus(ids, commid);
        return "1";
    }
    
    /**
     * 执行批量添加方法
     * @param ids 要添加的学生id
     * @param commid 要添加的社团的id
     * @return
     */
    @RequestMapping("saveCommStu")
    @ResponseBody
    public String saveCommStu(@RequestBody List<Integer> ids, Integer commid){
        //添加方法
        stuCommunityService.saveCommStus(ids, commid);
        return "1";
    }
    
    
    /**
     * 删除社团团员
     * @param ids 要删出的团员的id
     * @param commid 要这个从社团删除的社团的id
     * @return
     */
    @RequestMapping("delCommStus")
    @ResponseBody
    public String delCommStus(@RequestBody List<Integer> ids, Integer commid) {
        stuCommunityService.delCommStus(ids, commid);
        return "1";
    }
    
    /**
     * 添加社团团员
     * @param ids 要添加的社团成员的id
     * @param commid 添加到这个社团的社团的id
     * @return
     */
    @RequestMapping("saveCommStus")
    @ResponseBody
    public String saveCommStus(@RequestBody List<Integer> ids, Integer commid) {
        stuCommunityService.saveCommStus(ids, commid);        
        return "1";
    }

    /**
     * 查询我参加的社团
     * @param model
     * @param req
     * @return
     */
    @RequestMapping("getMyCommunity")
    public ModelAndView getMyCommunity(ModelAndView model, HttpServletRequest req) {

        // 得到学生对象
        Student stu = (Student) req.getSession().getAttribute("fstu");

        // 得到学生参加的社团信息
        model.addObject("commList", communityService.getMyCommunity(stu.getStuid()));

        // 得到学生为社团团长的社团信息
        model.addObject("commMasterList", communityService.getMyMasterCommunity(stu.getStuid()));

        // 将要跳转的页面
        model.setViewName("front/my-community");

        return model;
    }

    /**
     * 获取所有社团信息
     * @param pageParam 分页条件
     * @param kw 查询关键字
     * @return
     */
    @RequestMapping("getAllComm")
    @ResponseBody
    public PageData getAllCommunity(PageParam pageParam, String kw) {
        return communityService.getPageData(pageParam, kw);
    }

    /**
     * 添加社团
     * @param comm 社团对象
     * @return
     */
    @RequestMapping(value = "saveComm", method = RequestMethod.POST)
    @ResponseBody
    public String saveComm(@ModelAttribute Community comm,
            @RequestParam("file") MultipartFile file) {

        // 如果上传的图片不是空的
        if (!file.isEmpty()) {

            // 得到上传文件的原名字
            String fileName = file.getOriginalFilename();

            // 得到上传文件的后缀名
            fileName = fileName.substring(fileName.indexOf("."));

            // 得到新的文件名字
            fileName = UUID.randomUUID().toString() + fileName;

            try {
                // 复制到 指定的目录
                FileUtils.copyInputStreamToFile(file.getInputStream(),
                        new File("/D:/image/community/" + fileName));
            } catch (IOException e) {
                e.printStackTrace();
            }

            // 这只社团的图片
            comm.setImg(fileName);

        }

        // 如果社团的id为null则执行添加方法,
        // 如果社团的id不为null则执行更新方法
        if (comm.getCommunityid() == null) {
            communityService.save(comm);
            return "save is ok";
        } else {
            communityService.update(comm);
            return "update is ok";
        }
    }

    /**
     * 删除社团
     * @param ids 要删除的社团id
     * @return
     */
    @RequestMapping("delComm")
    @ResponseBody
    public String deleteComm(@RequestBody List<Integer> ids) {
        communityService.deleteMany(ids);
        return "ok";
    }

    /**
     * 为社团指定团长
     * @param commid 社团的id
     * @param stuid 指定学生的id
     * @return
     */
    @RequestMapping("setMaster")
    @ResponseBody
    public String setMaster(Integer commid, Integer stuid) {
        communityService.setMaster(commid, stuid);
        return "ok";
    }

}
