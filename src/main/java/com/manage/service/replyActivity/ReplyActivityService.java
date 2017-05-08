package com.manage.service.replyActivity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Dynamics;
import com.manage.entity.ReplyActivity;
import com.manage.mapper.replyActivity.ReplyActivityMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class ReplyActivityService implements BaseService<ReplyActivity>,ReplyActivityMapper{
    @Autowired
    private ReplyActivityMapper replyActivityMapper;
    @Override
    public List<ReplyActivity> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ReplyActivity queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(ReplyActivity t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(ReplyActivity t) {
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
     * 子回复
     * 分两种情况
     * 1评论
     * 2对已经评论过得进行子回复
     */
    @Override
    public void ReplyActivityParent(ReplyActivity replyActivity) {
        replyActivityMapper.ReplyActivityParent(replyActivity);
    }
    /**
     * 
     *2对已经评论过得进行子回复
     */
    @Override
    public void ReplyActivityChildren(ReplyActivity replyActivity) {
        replyActivityMapper.ReplyActivityChildren(replyActivity);
    }
    /**
     * 查询谁回复了这个活动所有
     * 查出来
     * 查出来子ID不为空的
     */
    @Override
    public List<ReplyActivity> selectReplyActivity(PageParam pageParam, Integer ActId, String keyWord) {
        return replyActivityMapper.selectReplyActivity(pageParam, ActId, keyWord);
    }

    @Override
    public Integer selectReplyActivityCount(Integer ActId, String keyWord) {
        return replyActivityMapper.selectReplyActivityCount(ActId, keyWord);
    }
}   
