package com.manage.mapper.discuss;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Discuss;
import com.manage.entity.ReplyDiscuss;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;

public interface DiscussMapper extends BaseMapper<Discuss> {

    /**
     * 讨论精选
     * @param pageParam 分页参数
     * @param keyWord 查询关键字
     * @return
     */
    List<Discuss> queryChoicenessDiscuss(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord);

    /**
     * 查询用户关注的讨论
     * @param pageParam  分页参数
     * @param id 用户id
     * @param keyWord 查询关键字
     * @return
     */
    List<Discuss> getMyAttentionDiscuss(@Param("pageParam") PageParam pageParam,
            @Param("id") Integer id, @Param("keyWord") String keyWord);

    /**
     * 查询用户关注的讨论的数量
     * @param id 用户的id
     * @return 用户关注的讨论的数量
     */
    Integer getMyAttentionDiscussCount(@Param("id") Integer id, @Param("keyWord") String keyWord);

    /**
     * 是否已经关注
     * @param stuid 学生id
     * @param discussid 讨论id
     * @return 1为已经关注 0为未关注
     */
    Integer checkAttention(@Param("stuid") Integer stuid, @Param("discussid") Integer discussid);

    /**
     * 是否已经举报
     * @param stuid 学生id
     * @param discussid 讨论id
     * @return 1为已经举报 0为未举报
     */
    Integer checkReport(@Param("stuid") Integer stuid, @Param("discussid") Integer discussid);

    /**
     * 查询此讨论有多少人关注
     * @param id 讨论的id
     * @return 关注讨论的人数
     */
    Integer getAttentionDiscussNum(Integer id);

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
     * 查看是否赞过
     * @param replyDiscussid 回复的id
     * @param stuid 学生的id
     * @return 1为已经赞过 0为未赞过
     */
    Integer checkPraiseReply(@Param("replyDiscussid") Integer replyDiscussid,
            @Param("stuid") Integer stuid);

    /**
     * 查看是否踩过
     * @param replyDiscussid 回复的id
     * @param stuid 学生的id
     * @return 1为已经踩过 0为未踩过
     */
    Integer checkAgainstReply(@Param("replyDiscussid") Integer replyDiscussid,
            @Param("stuid") Integer stuid);

}
