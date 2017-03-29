package com.manage.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.manage.entity.Community;
import com.manage.service.CommunityService;

@Controller
@Transactional
public class CommunityController {
    @Autowired
    private CommunityService service;//活动
    @RequestMapping("getAllCommunity")
    public String getAllCommunity(Model model){
        List<Community> listcomm = service.getAllCommunity();
        model.addAttribute("listcomm", listcomm);
        return "/front/community";
    }
}
