package com.manage.service.activity;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.entity.ReportActivity;
import com.manage.mapper.activity.ReportActivityMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class ReportActivityService implements BaseService<ReportActivity>,ReportActivityMapper{
     @Autowired
     private ReportActivityMapper reportActivityMapper;

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }
    /**
     * 判断是否已经举报
     */
    @Override
    public ReportActivity selectreportActivity(Integer ActId) {
        return reportActivityMapper.selectreportActivity(ActId);
    }
   /**
    * 举报活动
    */
   @Override
   public void reportActivity(ReportActivity reportActivity) {
       reportActivityMapper.reportActivity(reportActivity);
   }

}
