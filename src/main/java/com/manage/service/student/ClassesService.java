package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Classes;
import com.manage.mapper.student.ClassesMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class ClassesService implements BaseService<Classes>,ClassesMapper{
    
    @Autowired
    private ClassesMapper classesMapper;
    
    /**
     * 读取所有的年级所以 pageParam(分页)为null
     * 如果只想查询为毕业的班级,则keyWord 为no
     */
    @Override public List<Classes> queryAll(PageParam pageParam, String keyWord) {
        return classesMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Classes queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void deleteMany(List<Integer> ids) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(Classes t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(Classes t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<String> queryClassesByGrade(Integer grade) {
        return classesMapper.queryClassesByGrade(grade);
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }
    
}
