package com.manage.service.discuss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.AttentionDiscuss;
import com.manage.entity.Discuss;
import com.manage.entity.UnlockDiscussRequest;
import com.manage.mapper.discuss.AttentionDiscussMapper;
import com.manage.mapper.discuss.DiscussMapper;
import com.manage.mapper.discuss.LockDiscussMapper;
import com.manage.mapper.discuss.UnlockDiscussRequestMapper;
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

    @Autowired
    private UnlockDiscussRequestMapper unlockDiscussRequestMapper;
    
    @Autowired
    private LockDiscussMapper lockDiscussMapper;

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

        // 将获得的对象添加到discuss 对象中
        t.setDiscussid(discussid);

        // 执行添加关注方法
        attentionDiscussMapper.save(new AttentionDiscuss(t.getStu(), t));

    }

    @Override
    public void update(Discuss t) {
        discussMapper.update(t);
    }

    /**
     * 当更改讨论的时候,同时录入请求解封的原因
     * @param t
     * @param message
     */
    public void updateDiscuss(Discuss t, String message) {

        // 执行更新方法
        this.update(t);

        // 执行添加unlockDiscussRequest的方法
        UnlockDiscussRequest udr = new UnlockDiscussRequest();
        udr.setDiscuss(t);
        // 如果没有填写请求信息时将指定默认值
        // 数据库默认为 '讨论已经更改,请求审核'
        if (!(message == null && "".equals(message))) {
            udr.setMessage(message);
        }

        // 执行方法
        unlockDiscussRequestMapper.save(udr);
        
        // 将锁定信息设置为已经处理
        lockDiscussMapper.setLockDiscussStatus(t.getDiscussid());
        
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
    public void delete(Integer id) {
        discussMapper.delete(id);
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

    @Override
    public List<Discuss> getDiscussByStuid(Integer stuid, PageParam pageParam) {
        return discussMapper.getDiscussByStuid(stuid, pageParam);
    }

    @Override
    public Integer getDiscussByStuidCount(Integer stuid) {
        return discussMapper.getDiscussByStuidCount(stuid);
    }

    @Override
    public Discuss getBaseDiscussInfo(Integer discussid) {
        return discussMapper.getBaseDiscussInfo(discussid);
    }
}
