package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manage.entity.ReportDiscuss;
import com.manage.mapper.discuss.ReportDiscussMapper;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
@Transactional
public class ReportDiscussService implements ReportDiscussMapper {

    @Autowired
    private ReportDiscussMapper reportDiscussMapper;

    @Override
    public void save(ReportDiscuss reportDiscuss) {
        reportDiscussMapper.save(reportDiscuss);
    }

    @Override
    public void delete(List<Integer> ids) {
        reportDiscussMapper.delete(ids);
    }

    @Override
    public List<ReportDiscuss> getReportsByDiscussid(PageParam pageParam, Integer discussid) {
        return reportDiscussMapper.getReportsByDiscussid(pageParam, discussid);
    }

    @Override
    public Integer getReportsByDiscussidCount(Integer disucssid) {
        return reportDiscussMapper.getReportsByDiscussidCount(disucssid);
    }

    @Override
    public void setReportDiscussStatus(List<Integer> disucssids) {
        reportDiscussMapper.setReportDiscussStatus(disucssids);
    }
    
    /**
     * 查看讨论被举报的详情
     * @param pageParam 分页参数
     * @param disucssid 被举报讨论的id
     * @return
     */
    public PageData getPageData(PageParam pageParam, Integer discussid) {
        return new PageData(this.getReportsByDiscussidCount(discussid),
                this.getReportsByDiscussid(pageParam, discussid));
    }

}
