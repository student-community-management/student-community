package com.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.mapper.CommunityMapper;
@Service
public class CommunityService {
    @Autowired
    private CommunityMapper communitymapper;
       public List<Community> getAllCommunity(){
           Community comm = new Community();
           if(comm!=null){
               comm.getCommunityName();
           }
           List<Community> list =communitymapper.getAllCommunity();
           return list;
       }
}
