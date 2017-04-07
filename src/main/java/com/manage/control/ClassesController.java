 package com.manage.control;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Classes;
import com.manage.service.ClassesService;

@Controller
@RequestMapping("cls/")
public class ClassesController{
    
    @Autowired
    private ClassesService classesService;
    
/*    @RequestMapping("allCls")
    @ResponseBody
    public List<Classes> queryAll(String kw){
        return classesService.queryAll(null, kw);
    }*/
    
    /*
    @RequestMapping("getcls")
    @ResponseBody
    public List<Map<String, String>> queryAll(Integer grade){
        List<String> listData = classesService.queryClassesByGrade(grade);; 
        List<Map<String, String>> list = new ArrayList<Map<String, String>>();
        for(int i = 0;i<listData.size();i++){
            Map<String, String> map = new HashMap<String, String>();
            map.put("classes", listData.get(i));
            list.add(map);
        }
        return list;
    }
    */
}
