package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.manage.entity.UnlockDiscussRequest;
import com.manage.mapper.discuss.UnlockDiscussRequestMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
@RequestMapping("udr")
public class UnlockDiscussRequestService
        implements BaseService<UnlockDiscussRequest>, UnlockDiscussRequestMapper {
    
    @Autowired
    private UnlockDiscussRequestMapper unlockDiscussRequestMapper;

    @Override
    public List<UnlockDiscussRequest> query(PageParam pageParam, String keyWord) {

        return unlockDiscussRequestMapper.query(pageParam, keyWord);
    }

    @Override
    public Integer getCount(String keyWord) {
        return unlockDiscussRequestMapper.getCount(keyWord);
    }

    @Override
    public void save(UnlockDiscussRequest unlockDiscussRequest) {
        unlockDiscussRequestMapper.save(unlockDiscussRequest);

    }

    @Override
    public void setStatus(List<Integer> ids) {
        unlockDiscussRequestMapper.setStatus(ids);

    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord), this.query(pageParam, keyWord));
    }

}
