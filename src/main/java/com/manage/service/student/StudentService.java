package com.manage.service.student;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Student;
import com.manage.mapper.student.StudentMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class StudentService implements BaseService<Student>, StudentMapper {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> queryAll(PageParam pageParam, String keyWord) {
        return studentMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Student queryOne(Integer id) {
        return studentMapper.queryOne(id);
    }

    @Override
    public void deleteMany(List<Integer> ids) {
        if (ids == null || ids.size() == 0) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.deleteMany(ids);// 删除学生对象
        }
    }

    @Override
    public void save(Student t) {
        if (t == null) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.save(t);// 录入学生(或管理人员)信息
        }

    }

    @Override
    public void update(Student t) {
        if (t == null) {
            throw new RuntimeException("传入对象为空");
        } else {
            studentMapper.update(t);
        }
    }

    @Override
    public int getCount(String keyWord) {
        return studentMapper.getCount(keyWord);
    }

    @Override
    public List<Student> getStudentByCommid(Integer id) {

        if (id != null) {
            return studentMapper.getStudentByCommid(id);
        } else {
            throw new RuntimeException("查询参数有误");
        }
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord), this.queryAll(pageParam, keyWord));
    }

    @Override
    public Integer login(Student stu) {
        return studentMapper.login(stu);
    }

    @Override
    public List<Student> getCandidate(PageParam pageParam, String keyWord, Integer id) {
        return studentMapper.getCandidate(pageParam, keyWord, id);
    }

    @Override
    public Integer getCandidateCount(String keyWord, Integer id) {
        return studentMapper.getCandidateCount(keyWord, id);
    }

    /**
     * 得到此社团的团长候选人,为后台easyui datagrid生成数据
     * @param pageParam 分页条件
     * @param keyWord 查询关键字
     * @param id 社团的id
     * @return
     */
    public PageData getCandidatePageData(PageParam pageParam, String keyWord, Integer id) {
        return new PageData(this.getCandidateCount(keyWord, id),
                this.getCandidate(pageParam, keyWord, id));
    }

    @Override
    public void updateImg(Student stu) {
        studentMapper.updateImg(stu);
    }

    @Override
    public void delImg(String imgName) {
        // 创建file实例
        File file = new File("/D:/image/stu/" + imgName);

        // 如果这个图片存在则删除此图片
        if (file.exists()) {

            // 执行删除操作
            file.delete();
        }

    };

    /**
     * 更新学生的头像信息
     * @param stu 更新过后的学生对象
     * @param oldImgName 旧的图片名称
     */
    public void updateStuImg(Student stu, String oldImgName) {
        
        //如果图像的名称不是默认的图片名称则执行删除操作
        if(!"nophoto.png".equals(oldImgName)){
            // 删除旧的图片
            this.delImg(oldImgName);
        }

        // 更新学生头像信息
        this.updateImg(stu);

    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
    }

    @Override
    public void updateIntroduce(Student stu) {
        studentMapper.updateIntroduce(stu);
    }

    @Override
    public void updatePwd(Student stu) {
        studentMapper.updatePwd(stu);
    }

}
