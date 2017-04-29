package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.ReportDiscuss;
import com.manage.mapper.discuss.ReportDiscussMapper;

@Service
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

}
