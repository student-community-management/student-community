package com.manage.mapper.dynamics;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.manage.entity.Dynamics;
import com.manage.mapper.BaseMapper;
import com.manage.util.PageParam;
//动态
public interface DynamicsMapper  extends BaseMapper<Dynamics> {
    /**
     * 
     * @param pageParam 自动封装参数
     * @param keyWord
     * @return
     */
    List<Dynamics> queryAllForDyns(@Param("pageParam") PageParam pageParam,
            @Param("keyWord") String keyWord,@Param("dynamics") Dynamics dynamics);
}
