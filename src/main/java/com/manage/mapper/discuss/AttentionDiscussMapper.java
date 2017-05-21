package com.manage.mapper.discuss;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.AttentionDiscuss;

public interface AttentionDiscussMapper {

    /**
     * 添加关注
     * @param attentionDiscuss 
     */
    void save(AttentionDiscuss attentionDiscuss);

    /**
     * 取消关注
     * @param attentionDiscuss
     */
    void delete(AttentionDiscuss attentionDiscuss);

    /**
     * 查看此讨论是否被关注
     * @param attentionDiscuss
     * @return 如果被关注则为1,未被关注则为1
     */
    Integer checkAttention(AttentionDiscuss attentionDiscuss);

    /**
     * 查询此讨论有多少人关注
     * @param id 讨论的id
     * @return 关注讨论的人数
     */
    Integer getAttentionDiscussNum(Integer id);
    
    /**
     * 当删除讨论时,删除关注
     * @param id 讨论的id
     */
    void delByDiscussid(Integer id);

}
