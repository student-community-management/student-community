package com.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Classes;
import com.manage.mapper.ClassesMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class ClassesService implements BaseService<Classes>,ClassesMapper{
    
    @Autowired
    private ClassesMapper classesMapper;
   
    public Classes queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }



    public void update(Classes t) {
        // TODO Auto-generated method stub
        
    }

    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    public List<String> queryClassesByGrade(Integer grade) {
        return classesMapper.queryClassesByGrade(grade);
    }

    public PageData getPageData() {
        // TODO Auto-generated method stub
        return null;
    }
    /**
     * 读取所有的年级所以 pageParam(分页)为null
     * 如果只想查询为毕业的班级,则keyWord 为no
     */
/*    public PageData getPageData(PageParam pageParam, String keyWord) {
        return classesMapper.queryAll(pageParam, keyWord);
    }*/

    public List<Classes> queryAll(PageParam pageParam) {
        // TODO Auto-generated method stub
        return null;
    }

    public List<Classes> queryAll(Classes t, PageParam pageParam) {
        // TODO Auto-generated method stub
        return null;
    }

    public int getCount() {
        // TODO Auto-generated method stub
        return 0;
    }

    public void save(Classes t) {
        // TODO Auto-generated method stub
        
    }
    
}
