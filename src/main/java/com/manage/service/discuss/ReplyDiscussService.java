package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.ReplyDiscuss;
import com.manage.mapper.discuss.AgainstReplyDiscussMapper;
import com.manage.mapper.discuss.PraiseReplyDiscussMapper;
import com.manage.mapper.discuss.ReplyDiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class ReplyDiscussService implements BaseService<ReplyDiscuss>, ReplyDiscussMapper {

    @Autowired
    private ReplyDiscussMapper replyDiscussMapper;

    @Autowired
    private PraiseReplyDiscussMapper praiseReplyDiscussMapper;

    @Autowired
    private AgainstReplyDiscussMapper againstReplyDiscussMapper;
    
    @Override
    public List<ReplyDiscuss> getReplyDiscusses(PageParam pageParam, Integer discussid) {
        return replyDiscussMapper.getReplyDiscusses(pageParam, discussid);
    }

    @Override
    public void save(ReplyDiscuss t) {
        replyDiscussMapper.save(t);
    }

    @Override
    public void delete(Integer id) {

        // 删除此回复的赞
        praiseReplyDiscussMapper.delByReplyid(id);
        
        // 删除此回复的踩
        againstReplyDiscussMapper.delByReplyid(id);
        
        // 删除回复之后还要删除下面的子回复
        replyDiscussMapper.delete(id);

        // 得到此回答下的子回复的id
        List<Integer> ids = replyDiscussMapper.queryReplyToReplyid(id);

        // 如果下面有子回复则执行删除操作
        if (ids.size() > 0) {
            replyDiscussMapper.delSubReply(ids);
        }

    }

    @Override
    public void replyToReplyDisucss(ReplyDiscuss replyDisucss) {
        replyDiscussMapper.replyToReplyDisucss(replyDisucss);
    }

    @Override
    public List<ReplyDiscuss> queryReplyToReply(PageParam pageParam, Integer replyDiscussid) {
        return replyDiscussMapper.queryReplyToReply(pageParam, replyDiscussid);
    }

    @Override
    public Integer queryReplyToReplyCount(Integer replyDiscussid) {
        return replyDiscussMapper.queryReplyToReplyCount(replyDiscussid);
    }

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
    public void update(ReplyDiscuss t) {
        // TODO Auto-generated method stub

    }

    @Override
    public int getCount(String keyWord) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int getCount(String keyWord, int a) {

        return 0;
    }

    public int getCount(String keyWord, String a) {
        // TODO Auto-generated method stub
        return 0;
    }

    public void getCount(int a, String b) {
        // TODO Auto-generated method stub

    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Integer getReplyDiscussesCount(Integer discussid) {
        return replyDiscussMapper.getReplyDiscussesCount(discussid);
    }

    @Override
    public void delByDiscussid(Integer discussid) {
        // TODO Auto-generated method stub

    }

    @Override
    public List<Integer> getSubReplyids(Integer discussid) {
        // TODO Auto-generated method stub
        return replyDiscussMapper.getSubReplyids(discussid);
    }

    @Override
    public void delSubReply(List<Integer> ids) {
        replyDiscussMapper.delSubReply(ids);

    }

    @Override
    public List<Integer> queryReplyToReplyid(Integer id) {
        // 此方法并不会单独存在
        return null;
    }
}
