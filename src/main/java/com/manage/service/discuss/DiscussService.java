package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.AttentionDiscuss;
import com.manage.entity.Discuss;
import com.manage.mapper.discuss.AttentionDiscussMapper;
import com.manage.mapper.discuss.DiscussMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

/**
 * 讨论的Service层
 * @author ChenYuhao
 *
 */
@Service
public class DiscussService implements BaseService<Discuss>, DiscussMapper {

    @Autowired
    private DiscussMapper discussMapper;

    @Autowired
    private AttentionDiscussMapper attentionDiscussMapper;

    @Override
    public List<Discuss> queryAll(PageParam pageParam, String keyWord) {
        return discussMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Discuss queryOne(Integer id) {
        return discussMapper.queryOne(id);
    }

    @Override
    public void save(Discuss t) {
        // 当添加新的话题时,发出者也会关注此话题
        discussMapper.save(t);

        // 得到刚刚添加的话题的id
        Integer discussid = this.getNewDiscussid();
        
        //将获得的对象添加到discuss 对象中
        t.setDiscussid(discussid);

        // 执行添加关注方法
        attentionDiscussMapper.save(new AttentionDiscuss(t.getStu(), t));

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
        return new PageData(discussMapper.getReportDiscussesCount(keyWord),
                discussMapper.getReportDiscusses(pageParam, keyWord));
    }

    @Override
    public List<Discuss> queryChoicenessDiscuss(PageParam pageParam, String keyWord) {
        return discussMapper.queryChoicenessDiscuss(pageParam, keyWord);
    }

    @Override
    public List<Discuss> getMyAttentionDiscuss(PageParam pageParam, Integer id, String keyWord) {
        return discussMapper.getMyAttentionDiscuss(pageParam, id, keyWord);
    }

    @Override
    public Integer getMyAttentionDiscussCount(Integer id, String keyWord) {
        return discussMapper.getMyAttentionDiscussCount(id, keyWord);
    }

    @Override
    public Integer checkReport(Integer stuid, Integer discussid) {
        return discussMapper.checkReport(stuid, discussid);
    }

    @Override
    public Integer getReplyDiscussesCount(Integer discussid) {
        return discussMapper.getReplyDiscussesCount(discussid);
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub
    }

    @Override
    public List<Discuss> getReportDiscusses(PageParam pageParam, String keyWord) {
        return discussMapper.getReportDiscusses(pageParam, keyWord);
    }

    @Override
    public Integer getReportDiscussesCount(String keyWord) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void setDiscussStatus(List<Integer> ids, Integer status) {
        discussMapper.setDiscussStatus(ids, status);
    }

    @Override
    public Integer getNewDiscussid() {
        return discussMapper.getNewDiscussid();
    }

}
