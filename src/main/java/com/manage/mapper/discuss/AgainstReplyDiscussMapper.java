package com.manage.mapper.discuss;

import com.manage.BaseInterface;
import com.manage.entity.AgainstReplyDiscuss;

public interface AgainstReplyDiscussMapper extends BaseInterface<AgainstReplyDiscuss> {
    /**
     * 删除踩
     * @param againstReplyDiscuss 对象
     */
    void deleteByObj(AgainstReplyDiscuss againstReplyDiscuss);
}
