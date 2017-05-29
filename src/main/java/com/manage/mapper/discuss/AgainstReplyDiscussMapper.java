package com.manage.mapper.discuss;

import com.manage.entity.AgainstReplyDiscuss;

public interface AgainstReplyDiscussMapper {

    /**
     * 反对回复
     * @param t 全新的实体类对象
     * @throws Exception 
     */
    void save(AgainstReplyDiscuss againstReplyDiscuss);

    /**
     * 删除踩
     * @param againstReplyDiscuss 对象
     */
    void deleteByObj(AgainstReplyDiscuss againstReplyDiscuss);

    /**
     * 查看此回复是否是我踩的
     * @param againstReplyDiscuss 对象
     * @return
     */
    Integer checkAgainstReply(AgainstReplyDiscuss againstReplyDiscuss);
    
    
    /**
     * 通过回复的id删除踩
     * @param id 回复的id
     */
    void delByReplyid(Integer id);
}
