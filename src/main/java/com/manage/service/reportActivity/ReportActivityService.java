package com.manage.service.reportActivity;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.entity.ReportActivity;
import com.manage.mapper.reportActivity.ReportActivityMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class ReportActivityService implements BaseService<ReportActivity>,ReportActivityMapper{
     @Autowired
     private ReportActivityMapper reportActivityMapper;
    @Override
    public List<ReportActivity> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ReportActivity queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(ReportActivity t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(ReportActivity t) {
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
