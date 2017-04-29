package com.manage.mapper.discuss;

import java.util.List;

import com.manage.entity.ReportDiscuss;

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
}
