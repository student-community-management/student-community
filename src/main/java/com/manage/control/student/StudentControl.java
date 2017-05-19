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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.manage.entity.Student;
import com.manage.service.student.StudentService;
import com.manage.util.Data;
import com.manage.util.Files;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Controller
@RequestMapping("stu/")
public class StudentControl {

    @Autowired
    private StudentService studentService;
    
    
    /**
     * 更新头像
     * @param file 上传的图片
     * @param req HttpServletRequest
     * @return 返回layerui要求返回的json字符串
     */
    @RequestMapping("img")
    @ResponseBody
    public Files uploadImg(@RequestParam("img") MultipartFile file, HttpServletRequest req) {

        Files files = new Files();
        
        files.setMsg("field");
        
        // 如果上传的文件不是空
        if (!file.isEmpty()) {

            // 得到学生对象为更新做准备
            Student stu = (Student) req.getSession().getAttribute("fstu");

            // 获得文件的原始名称
            String fileName = file.getOriginalFilename();

            // 获得文件的后缀名
            fileName = fileName.substring(fileName.indexOf("."));

            // 生成新的文件名称
            fileName = UUID.randomUUID().toString() + fileName;

            try {
                // 复制到指定的文件夹
                FileUtils.copyInputStreamToFile(file.getInputStream(),
                        new File("/D:/image/stu/" + fileName));

                // 得到旧的头像的名称
                String oldImgName = stu.getImg();

                // 更改学生的头像
                stu.setImg(fileName);

                // 调用更新方法
                studentService.updateStuImg(stu, oldImgName);

                files.setMsg("success");

                // 实例化Data属性 data为fils中的一个属性主要是为了生成一个完整的json字符串
                Data data = new Data();
                
                // 设置图片的名称
                data.setSrc(fileName);
                
                // 将data保存在files中
                files.setData(data);
                
            } catch (IOException e) {
                e.printStackTrace();
            }

        }

        return files;
    }

    /**
     * 得到所有的学生(管理人员)信息
     * 当classid不为空时为学生
     * 当classid为空时则为管理人员
     * @param pageParam 分页条件
     * @param kw  查询关键字
     * @return 符合查询条件的学生
     */
    @RequestMapping("getAllStu")
    @ResponseBody
    public PageData qeuryAll(PageParam pageParam, String kw) {
        return studentService.getPageData(pageParam, kw);
    }

    /**
     * 暂时没有用到
     * 得到所有的管理人员信息
     * @param pageParam 分页条件
     * @param kw  查询关键字
     * @return 符合查询条件的管理人员
     */
    @RequestMapping("getAllMgr")
    @ResponseBody
    public PageData qeuryAllMgr(PageParam pageParam, String kw) {
        return studentService.getPageData(pageParam, kw);
    }

    /**
     * 暂时没有用到
     * 查询此社团下的学生
     * @param id 社团的id
     * @return 符合条件的学生
     */
    @RequestMapping("getStusByCommid")
    @ResponseBody
    public List<Student> test(Integer id) {
        List<Student> list = studentService.getStudentByCommid(id);
        return list;
    }

    /**
     * 添加/修改 学生信息
     * 从前台传stu的属性值
     * 由Springmvc进行封装
     * 如果stu的stuid属性为空,则调用添加的方法
     * 如果stu的stuid属相不为空,则调用更新的方法
     * 
     * 前台参数有:
     *      stuName,stuNativePlace,stuBirthday,
     *      sutSex,classes.classesid,crid(communityRoleid)
     * 其他参数:
     *      stuid 在添加方法中为自增,
     *            在更新方法中作为条件
     *      stuPwd 默认为 '123123'
     * 
     * @param stu 学生对象
     * @param crid communiotyRoleid 社团角色对应的id
     * @throws Exception
     */
    @RequestMapping("saveStu")
    @ResponseBody
    public String saveStu(@ModelAttribute Student stu) throws Exception {
        if (stu.getStuid() == null) {
            studentService.save(stu);
            return "save is ok";
        } else {
            studentService.update(stu);
            return "update is ok";
        }
    }

    /**
     * 通过学生的id来删除学生信息
     * 要删除的学生id封装在list中
     * @param ids 需要删除的学生的id
     * 
     */
    @RequestMapping("deleteStu")
    @ResponseBody
    public String deleteStu(@RequestBody List<Integer> ids) {
        studentService.deleteMany(ids);
        return "ok";
    }

    /**
     * 前台登陆
     * @param stu 学生的帐号和密码
     * @param req request 获取session
     * @return 是否登陆成功: 1为登录成功
     */
    @RequestMapping("flogin")
    @ResponseBody
    public String frontLogin(@ModelAttribute Student stu, HttpServletRequest req) {
        String status = studentService.login(stu).toString();

        if ("1".equals(status)) {
            // 将学生信息保存到session中
            req.getSession().setAttribute("fstu", studentService.queryOne(stu.getStuid()));
        }
        return status;
    }

    @RequestMapping("invalidate")
    @ResponseBody
    public ModelAndView invalidate(ModelAndView model ,HttpServletRequest req) {
        // 注销用户
        req.getSession().invalidate();
        
        model.setViewName("redirect:/jsps/front/login.jsp");
        return model;
    }

    /**
     * 得到社团的候选人
     * @param pageParam 分页条件
     * @param kw 查询关键字,只支持学生姓名的模糊查询
     * @param id 社团的id
     * @return
     */
    @RequestMapping("getCandidate")
    @ResponseBody
    public PageData getCandidate(PageParam pageParam, String kw, Integer id) {
        return studentService.getCandidatePageData(pageParam, kw, id);
    }

}
