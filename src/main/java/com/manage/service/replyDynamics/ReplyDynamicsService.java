package com.manage.service.replyDynamics;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.ReplyDynamics;
import com.manage.mapper.replyDynamics.ReplyDynamicsMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class ReplyDynamicsService implements BaseService<ReplyDynamics>,ReplyDynamicsMapper{
    @Autowired
    private ReplyDynamicsMapper replyDynamicsMapper;
    @Override
    public List<ReplyDynamics> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ReplyDynamics queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(ReplyDynamics t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(ReplyDynamics t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }
/**
 * 
 * 不带分页动态评论查询
 */
    @Override
    public List<ReplyDynamics> selectReplyDynamics(Integer dynamicsId) {
        return replyDynamicsMapper.selectReplyDynamics(dynamicsId);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

}
