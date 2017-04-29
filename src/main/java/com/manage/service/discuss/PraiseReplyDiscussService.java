package com.manage.service.discuss;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.PraiseReplyDiscuss;
import com.manage.mapper.discuss.PraiseReplyDiscussMapper;

@Service
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

}
