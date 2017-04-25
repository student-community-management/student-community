package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.AgainstReplyDiscuss;
import com.manage.mapper.discuss.AgainstReplyDiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class AgainstReplyDiscussService
        implements BaseService<AgainstReplyDiscuss>, AgainstReplyDiscussMapper {

    @Autowired
    private AgainstReplyDiscussMapper againstReplyDiscussService;

    @Override
    public void save(AgainstReplyDiscuss t) {
        againstReplyDiscussService.save(t);

    }

    @Override
    public void deleteByObj(AgainstReplyDiscuss againstReplyDiscuss) {
        againstReplyDiscussService.deleteByObj(againstReplyDiscuss);
    }

    @Override
    public List<AgainstReplyDiscuss> queryAll(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public AgainstReplyDiscuss queryOne(Integer id) {
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

    @Override
    public void update(AgainstReplyDiscuss t) {
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

}
