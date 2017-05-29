package com.manage.mapper.discuss;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.ReplyDiscuss;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;

public interface ReplyDiscussMapper extends BaseMapper<ReplyDiscuss> {

    /**
     * 查询此讨论下的回复
     * @param pageParam 分页参数
     * @param id 讨论的id
     * @return
     */
    List<ReplyDiscuss> getReplyDiscusses(@Param("pageParam") PageParam pageParam,
            @Param("discussid") Integer discussid);
    
    /**
     * 查询此讨论下的回复数量
     * @param discussid 讨论的id
     * @return 回复数量
     */
    Integer getReplyDiscussesCount(@Param("discussid") Integer discussid);
    
    
    /**
     * 回复讨论下的回答
     * @param replyDisucss ReplyDisucss 对象
     */
    void replyToReplyDisucss(ReplyDiscuss replyDisucss);
    
    /**
     * 查看回复的回复
     * @param pageParam 分页参数
     * @param discussid 回复的id
     * @return
     */
    List<ReplyDiscuss> queryReplyToReply(@Param("pageParam") PageParam pageParam,
            @Param("replyDiscussid") Integer replyDiscussid);
    
    
    /**
     * 查看回复的回复的数量
     * @param replyDiscussid 回复的id
     * @return
     */
    Integer queryReplyToReplyCount(Integer replyDiscussid);
    
    /**
     * 删除此讨论下的回复
     * @param discussid 讨论的id
     */
    void delByDiscussid(@Param("id") Integer discussid);
    
    /**
     * 得到此讨论下的所有子回复
     * @param discussid 讨论的id
     * @return
     */
    List<Integer> getSubReplyids(@Param("id") Integer discussid);
    
    /**
     * 删除子回复
     * @param discussid 讨论的id
     * @return
     */
    void delSubReply(@Param("ids") List<Integer> ids);
    
    /**
     * 得到此回复下的子回复id
     * @param id 回复的id
     * @return
     */
    List<Integer> queryReplyToReplyid(Integer id);
    
}
