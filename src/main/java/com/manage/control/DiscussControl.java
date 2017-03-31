package com.manage.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.manage.service.DiscussService;
import com.manage.service.StudentService;

@Controller
public class DiscussControl implements BaseControl {

    @Autowired
    @Qualifier("discussService")
    private DiscussService discussService;
    
    
    public String disList(){
    	
    	return null;
    }
}
