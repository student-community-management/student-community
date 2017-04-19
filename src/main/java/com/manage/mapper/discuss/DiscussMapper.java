package com.manage.mapper.discuss;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Discuss;
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
    Integer getMyAttentionDiscussCount( @Param("id") Integer id,@Param("keyWord") String keyWord);
}
