package com.manage.service.discuss;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.entity.Discuss;
import com.manage.mapper.discuss.DiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;
@Service
public class DiscussService implements BaseService<Discuss>,DiscussMapper {
    @Autowired
    private DiscussMapper discussMapper;
    @Override
    public List<Discuss> queryAll(PageParam pageParam, String keyWord) {
        return  discussMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Discuss queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(List<Integer> ids) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void save(Discuss t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void update(Discuss t) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public int getCount(String keyWord) {
        return discussMapper.getCount(keyWord);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Discuss> queryChoicenessDiscuss(PageParam pageParam, String keyWord) {
        return discussMapper.queryChoicenessDiscuss(pageParam, keyWord);
    }

    @Override
    public List<Discuss> getMyAttentionDiscuss(PageParam pageParam, Integer id,String keyWord) {
        return discussMapper.getMyAttentionDiscuss(pageParam, id,keyWord);
    }

    @Override
    public Integer getMyAttentionDiscussCount(Integer id,String keyWord) {
        return discussMapper.getMyAttentionDiscussCount(id,keyWord);
    }


}
