package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.StuCommRequest;
import com.manage.mapper.student.StuCommRequestMapper;

@Service
public class StuCommRequestService implements StuCommRequestMapper {

    @Autowired
    private StuCommRequestMapper stuCommRequestMapper;

    @Override
    public void save(StuCommRequest t) {
        stuCommRequestMapper.save(t);
    }

    @Override
    public void setStatus(List<Integer> ids, Integer commid) {
        stuCommRequestMapper.setStatus(ids, commid);
    }


}
