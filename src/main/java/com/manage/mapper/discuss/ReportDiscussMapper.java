package com.manage.mapper.discuss;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.ReportDiscuss;
import com.manage.util.PageParam;

public interface ReportDiscussMapper {

    /**
     * 举报讨论
     * @param reportDiscuss ReportDiscuss 对象
     */
    void save(ReportDiscuss reportDiscuss);

    /**
     * 批量删除讨论
     * @param ids 要删除的讨论的id
     */
    void delete(List<Integer> ids);

    /**
     * 通过讨论的id查看被举报的内容
     * @param pageParam 分页条件
     * @param discussid 讨论的id
     * @return 举报内容的结果集
     */
    List<ReportDiscuss> getReportsByDiscussid(@Param("pageParam") PageParam pageParam,
            @Param("discussid") Integer discyssid);
    
    /**
     * 通过讨论的id查看被举报的内容的数量
     * @param discussid 讨论的id
     * @return 信息的数量
     */
    Integer getReportsByDiscussidCount(Integer discussid);
    
    /**
     * 将处理状态设置为已经处理  0 为未处理 1为已经处理
     * @param discussids 讨论的id
     */
    void setReportDiscussStatus(@Param("discussids") List<Integer> discussids);
    
}
