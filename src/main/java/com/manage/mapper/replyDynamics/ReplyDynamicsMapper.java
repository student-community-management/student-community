package com.manage.mapper.replyDynamics;

import java.util.List;
import com.manage.entity.ReplyDynamics;
import com.manage.mapper.BaseMapper;
/**
 * 动态的评论
 * 不带分页
 */
public interface ReplyDynamicsMapper extends BaseMapper<ReplyDynamics>{
    List<ReplyDynamics> selectReplyDynamics(Integer dynamicsId);//查询谁评论了这个活动
}
