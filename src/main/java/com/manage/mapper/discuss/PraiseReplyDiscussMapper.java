package com.manage.mapper.discuss;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.PraiseReplyDiscuss;

public interface PraiseReplyDiscussMapper{
   
    /**
     *  回复点赞
     *  @param praiseReplyDiscuss 
     */
    void save(PraiseReplyDiscuss praiseReplyDiscuss);
    
    /**
     * 取消点赞
     * @param praiseReplyDiscuss 
     */
    void deleteByObj(PraiseReplyDiscuss praiseReplyDiscuss);
    
    /**
     * 查看此回复是否是我点的赞
     * @param praiseReplyDiscuss
     * @return
     */
    Integer checkPraiseReply(PraiseReplyDiscuss praiseReplyDiscuss);
    
}
