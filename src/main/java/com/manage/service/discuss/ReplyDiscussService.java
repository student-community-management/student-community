package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.ReplyDiscuss;
import com.manage.mapper.discuss.ReplyDiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class ReplyDiscussService implements BaseService<ReplyDiscuss>, ReplyDiscussMapper {

    @Autowired
    private ReplyDiscussMapper replyDiscussMapper;

    @Override
    public List<ReplyDiscuss> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ReplyDiscuss queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void deleteMany(List<Integer> ids) {
        // TODO Auto-generated method stub

    }

    @Override
    public void save(ReplyDiscuss t) {
        replyDiscussMapper.save(t);
    }

    @Override
    public void update(ReplyDiscuss t) {
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

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

}
