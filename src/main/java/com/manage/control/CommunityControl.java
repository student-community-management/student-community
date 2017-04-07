package com.manage.control;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Student;
import com.manage.service.CommunityService;

@Controller
public class CommunityControl{

    @Autowired
    private CommunityService communityService;

}
