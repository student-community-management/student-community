package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.PraiseReplyDiscuss;
import com.manage.mapper.discuss.PraiseReplyDiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class PraiseReplyDiscussService
        implements BaseService<PraiseReplyDiscuss>, PraiseReplyDiscussMapper {

    @Autowired
    private PraiseReplyDiscussMapper praiseReplyDiscussMapper;

    @Override
    public void save(PraiseReplyDiscuss t) {
        praiseReplyDiscussMapper.save(t);

    }

    @Override
    public void deleteByObj(PraiseReplyDiscuss praiseReplyDiscuss) {
        praiseReplyDiscussMapper.deleteByObj(praiseReplyDiscuss);

    }

    @Override
    public List<PraiseReplyDiscuss> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public PraiseReplyDiscuss queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void update(PraiseReplyDiscuss t) {
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

    @Override
    public void deleteMany(List<Integer> ids) {
        // TODO Auto-generated method stub

    }

}
