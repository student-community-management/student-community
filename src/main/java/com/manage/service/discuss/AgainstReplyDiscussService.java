package com.manage.service.discuss;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.AgainstReplyDiscuss;
import com.manage.mapper.discuss.AgainstReplyDiscussMapper;

@Service
public class AgainstReplyDiscussService implements AgainstReplyDiscussMapper {

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
    public Integer checkAgainstReply(AgainstReplyDiscuss againstReplyDiscuss) {
        return againstReplyDiscussService.checkAgainstReply(againstReplyDiscuss);
    }

}
