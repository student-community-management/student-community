package com.manage.mapper.dynamics;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.Dynamics;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;
//动态
public interface DynamicsMapper  extends BaseMapper<Dynamics> {
    /**
     * 查询用户动态的数量
     * @param id 用户的id
     * @return 用户动态的数量
     */
    List<Dynamics> getMyselfAllDynamics(@Param("pageParam") PageParam pageParam, @Param("id") Integer id,@Param("keyWord") String keyWord);
    /**
     *查询用户动态的数量
     * @param id 用户的id
     * @return 用户动态的数量
     */
    Integer getMyselfAllDynamicsCount( @Param("id") Integer id,@Param("keyWord") String keyWord);
}
