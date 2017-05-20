package com.manage.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.entity.StuCommunity;
import com.manage.entity.StuCommunityRole;
import com.manage.entity.Student;
import com.manage.mapper.student.CommunityMapper;
import com.manage.mapper.student.CommunityRoleMapper;
import com.manage.mapper.student.StuCommunityMapper;
import com.manage.mapper.student.StuCommunityRoleMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class CommunityService implements BaseService<Community>, CommunityMapper {

    @Autowired
    private CommunityMapper communityMapper;

    @Autowired
    private CommunityRoleMapper communityRoleMapper;

    @Autowired
    private StuCommunityMapper stuCommunityMapper;

    @Autowired
    private StuCommunityRoleMapper stuCommunityRoleMapper;

    @Override
    public List<Community> queryAll(PageParam pageParam, String keyWord) {
        return communityMapper.queryAll(pageParam, keyWord);
    }

    @Override
    public Community queryOne(Integer id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void deleteMany(List<Integer> ids) {
        // 删除社团
        communityMapper.deleteMany(ids);

        // 删除社团角色对应的学生
        stuCommunityRoleMapper.delByCommids(ids);

        // 删除社团对应的角色
        communityRoleMapper.deleteByCommid(ids);

        // 当删除社团时,自动解除社团和学生的关系
        stuCommunityMapper.deleteByCommids(ids);
    }

    @Override
    public void save(Community t) {
        // 添加社团
        communityMapper.save(t);
        // 获得刚刚添加的社团id
        Integer communityid = communityMapper.getNewComunityid();
        // 自动添加对应的角色
        communityRoleMapper.saveByCommid(communityid);
    }

    @Override
    public void update(Community t) {
        communityMapper.update(t);
    }

    @Override
    public int getCount(String keyWord) {
        return communityMapper.getCount(keyWord);
    }

    @Override
    public PageData getPageData(PageParam pageParam, String keyWord) {
        return new PageData(this.getCount(keyWord), this.queryAll(pageParam, keyWord));
    }

    @Override
    public Integer getNewComunityid() {
        return communityMapper.getNewComunityid();
    }

    @Override
    public void delete(Integer id) {
        // TODO Auto-generated method stub

    }

    @Override
    public StuCommunityRole getCommMaster(Integer id) {
        return communityMapper.getCommMaster(id);
    }

    @Override
    public Integer getCommMasterRoleid(Integer id) {
        return communityMapper.getCommMasterRoleid(id);
    }

    /**
     * 指定社团团长
     * @param commid 社团的id
     * @param stuid 要指定为团长的学生id
     */
    public void setMaster(Integer commid, Integer stuid) {

        // 得到社团的团长和团长对应的职位id
        StuCommunityRole scr = null;

        // 通过社团的id查询社团团长的id
        scr = communityMapper.getCommMaster(commid);

        // scr如果不为空则先删除前团长,再指定新的团长
        // scr如果为空则直接指定社团团长

        // 如果scr是不空的
        if (scr != null) {
            // 删除学生和社团团长的关系
            // scr 已经使用完毕没有使用价值了
            stuCommunityRoleMapper.del(scr);
        }

        // 判断此学生是否是这个社团的
        // 通过学生id和 社团的id查询是否存在
        // 1为是社团成员,0为不是社团成员
        StuCommunity sc = new StuCommunity(new Student(stuid), new Community(commid));
        Integer yes = stuCommunityMapper.exist(sc);

        if (yes == 0) {
            System.out.println("将学生添加到社团中");
            // 如果不是此社团成员
            // 将此学生添加到此社团
            // sc 参数为上面判断学生是否为此社团成员
            // 所以如果不是则直接执行添加方法
            stuCommunityMapper.save(sc);
        }

        // 实例化StuCommunityRole 对象添加学生id和社团团长职务对应的id
        scr = new StuCommunityRole(stuid);
        scr.setCommunityRoleid(communityMapper.getCommMasterRoleid(commid));

        System.out.println("指定团长");
        // 指定为社团团长
        stuCommunityRoleMapper.save(scr);

    }

    @Override
    public List<Community> getMyCommunity(Integer stuid) {
        return communityMapper.getMyCommunity(stuid);
    }

    @Override
    public List<Community> getMyMasterCommunity(Integer stuid) {
        return communityMapper.getMyMasterCommunity(stuid);
    }

}
