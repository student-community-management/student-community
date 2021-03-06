package com.manage.service.discuss;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.PraiseReplyDiscuss;
import com.manage.mapper.discuss.PraiseReplyDiscussMapper;

@Service
@Transactional
public class PraiseReplyDiscussService implements PraiseReplyDiscussMapper {

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
    public Integer checkPraiseReply(PraiseReplyDiscuss praiseReplyDiscuss) {
        return praiseReplyDiscussMapper.checkPraiseReply(praiseReplyDiscuss);
    }

    @Override
    public void delByReplyid(Integer id) {
       //此方法并不会单独存在,在删除回复的时候会被调用
    }

}
