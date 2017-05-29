package com.manage.service.discuss;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.AgainstReplyDiscuss;
import com.manage.mapper.discuss.AgainstReplyDiscussMapper;

@Service
@Transactional
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

    @Override
    public void delByReplyid(Integer id) {
        // 此方法并不会单独存在,在删除回复时被调用
    }

}
