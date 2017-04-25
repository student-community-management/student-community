package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Discuss;
import com.manage.entity.ReplyDiscuss;
import com.manage.mapper.discuss.DiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class DiscussService implements BaseService<Discuss>, DiscussMapper {

    @Autowired
    private DiscussMapper discussMapper;

    @Override
    public List<Discuss> queryAll(PageParam pageParam, String keyWord) {
        return discussMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Discuss queryOne(Integer id) {
        return discussMapper.queryOne(id);
    }

    @Override
    public void deleteMany(List<Integer> ids) {
        // TODO Auto-generated method stub

    }

    @Override
    public void save(Discuss t) {
        // TODO Auto-generated method stub

    }

    @Override
    public void update(Discuss t) {
        // TODO Auto-generated method stub

    }

    @Override
    public int getCount(String keyWord) {
        return discussMapper.getCount(keyWord);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Discuss> queryChoicenessDiscuss(PageParam pageParam, String keyWord) {
        return discussMapper.queryChoicenessDiscuss(pageParam, keyWord);
    }

    @Override
    public List<Discuss> getMyAttentionDiscuss(PageParam pageParam, Integer id, String keyWord) {
        return discussMapper.getMyAttentionDiscuss(pageParam, id, keyWord);
    }

    @Override
    public Integer getMyAttentionDiscussCount(Integer id, String keyWord) {
        return discussMapper.getMyAttentionDiscussCount(id, keyWord);
    }

//    @Override
//    public Discuss getDicsusDetail(Integer id) {
//        return discussMapper.getDicsusDetail(id);
//    }

    @Override
    public Integer checkAttention(Integer stuid, Integer discussid) {
        return discussMapper.checkAttention(stuid, discussid);
    }

    @Override
    public Integer checkReport(Integer stuid, Integer discussid) {
        return discussMapper.checkReport(stuid, discussid);
    }

    @Override
    public Integer getAttentionDiscussNum(Integer id) {
        return discussMapper.getAttentionDiscussNum(id);
    }

    @Override
    public List<ReplyDiscuss> getReplyDiscusses(PageParam pageParam, Integer discussid) {
        return discussMapper.getReplyDiscusses(pageParam, discussid);
    }

    @Override
    public Integer getReplyDiscussesCount(Integer discussid) {
        return discussMapper.getReplyDiscussesCount(discussid);
    }

    @Override
    public Integer checkPraiseReply(Integer replyDiscussid, Integer stuid) {
        return discussMapper.checkPraiseReply(replyDiscussid, stuid);
    }

    @Override
    public Integer checkAgainstReply(Integer replyDiscussid, Integer stuid) {
        return discussMapper.checkAgainstReply(replyDiscussid, stuid);
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
        
    }

}
