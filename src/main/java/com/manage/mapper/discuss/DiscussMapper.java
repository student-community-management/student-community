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
    Integer getMyAttentionDiscussCount(@Param("id") Integer id, @Param("keyWord") String keyWord);

    /**
     * 是否已经举报
     * @param stuid 学生id
     * @param discussid 讨论id
     * @return 1为已经举报 0为未举报
     */
    Integer checkReport(@Param("stuid") Integer stuid, @Param("discussid") Integer discussid);

    /**
     * 得到举报过的讨论,举报的处理结果为未处理,显示状态为显示
     * @param pageParam 分页条件
     * @param keyWord 查询关键字
     * @return
     */
    List<Discuss> getReportDiscusses(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord);

    /**
     * 得到举报过的讨论的数量,处理结果为未处理,显示状态为显示
     * @return
     */
    Integer getReportDiscussesCount(@Param("keyWord") String keyWord);

    /**
     * 更改讨论的状态 0为不显示,1为显示
     * @param ids 要删除的id
     * @param status 修改显示状态
     */
    void setDiscussStatus(@Param("ids") List<Integer> ids, @Param("status") Integer status);
    
    /**
     * 得到刚刚添加的讨论的id
     * 最新的
     * @return 讨论的id
     */
    Integer getNewDiscussid();
    
    /**
     * 查看登录学生的发起的讨论
     * @param stuid 登陆的学生的id
     * @return
     */
    List<Discuss> getDiscussByStuid(@Param("id") Integer stuid,
            @Param("pageParam") PageParam pageParam);
    
    
    /**
     * 获得我关注的讨论的数量
     * @param stuid
     * @return
     */
    Integer getDiscussByStuidCount(@Param("id") Integer stuid);
    

}
