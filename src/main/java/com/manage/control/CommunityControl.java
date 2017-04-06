package com.manage.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.manage.service.CommunityService;

@Controller
public class CommunityControl  {

    @Autowired
    private CommunityService communityService;

}
