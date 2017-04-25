package com.manage.mapper.discuss;

import com.manage.BaseInterface;
import com.manage.entity.PraiseReplyDiscuss;

public interface PraiseReplyDiscussMapper extends BaseInterface<PraiseReplyDiscuss> {
    /**
     * 取消点赞
     * @param praiseReplyDiscuss 
     */
    void deleteByObj(PraiseReplyDiscuss praiseReplyDiscuss);
}
