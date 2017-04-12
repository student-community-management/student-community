package com.manage.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.entity.ActivityType;
import com.manage.mapper.activity.ActivityTypeMapper;
@Service
public class ActivityTypeService {
        @Autowired
        private ActivityTypeMapper activityTypeMapper;
           public List<ActivityType> getAllCommunity(){
               ActivityType activityType = new ActivityType();
               if(activityType!=null){
                   activityType.getActivityTypeName();
               }
               List<ActivityType> list =activityTypeMapper.getAllActivitytype();
               return list;
           }
}
