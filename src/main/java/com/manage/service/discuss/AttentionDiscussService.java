package com.manage.service.discuss;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.AttentionDiscuss;
import com.manage.mapper.discuss.AttentionDiscussMapper;

@Service
public class AttentionDiscussService implements AttentionDiscussMapper {

    @Autowired
    private AttentionDiscussMapper attentionDiscussMapper;

    @Override
    public void save(AttentionDiscuss attentionDiscuss) {
        attentionDiscussMapper.save(attentionDiscuss);
    }

    @Override
    public void delete(AttentionDiscuss attentionDiscuss) {
        attentionDiscussMapper.delete(attentionDiscuss);
    }

    @Override
    public Integer checkAttention(AttentionDiscuss attentionDiscuss) {
        return attentionDiscussMapper.checkAttention(attentionDiscuss);
    }

    @Override
    public Integer getAttentionDiscussNum(Integer id) {
        return attentionDiscussMapper.getAttentionDiscussNum(id);
    }

    @Override
    public void delByDiscussid(Integer id) {
        // 并不能作为一个单独的方法存在
        
    }

}
