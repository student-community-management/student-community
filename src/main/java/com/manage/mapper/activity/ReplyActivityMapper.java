package com.manage.mapper.activity;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.manage.entity.ReplyActivity;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;
/**
 * 活动讨论，以及回复
 */
public interface ReplyActivityMapper extends BaseMapper<ReplyActivity>{
    /**
     * 查询用户回复的数量
     * @param id 用户的id
     * @return 用户回复的数量
     */
    List<ReplyActivity> selectReplyActivity(@Param("pageParam") PageParam pageParam, @Param("ActId") Integer ActId,@Param("keyWord") String keyWord);//查询谁评论了这个活动
    /**
     *查询用户动态的数量
     * @param id 用户回复的id
     * @return 用户子回复的数量
     */
    Integer selectReplyActivityCount( @Param("ActId") Integer ActId,@Param("keyWord") String keyWord);
    public void ReplyActivityParent(ReplyActivity replyActivity);//第一次评论
    public void ReplyActivityChildren(ReplyActivity replyActivity);//对已经评论的进行回复
}
