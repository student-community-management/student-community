package com.manage.mapper.discuss;

import java.util.List;

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
    
    
    /**
     * 通过回复的id删除赞
     * @param id
     */
    void delByReplyid(Integer id);
    
}
