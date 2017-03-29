package com.manage.mapper;
import java.util.List;
import com.manage.entity.Community;
public interface CommunityMapper {
    public List<Community> getAllCommunity();//查询所有活动
    public Integer getAllcount();//活动总数
    public void addCommunity(Community community);//增加活动
    public Integer UpdateCommunity(Community community);//修改活动信息
    public Integer deleteCommunity(Community community);//取消此活动
}
