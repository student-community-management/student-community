package com.manage.service.student;

import java.util.List;

import org.springframework.stereotype.Service;

import com.manage.entity.Community;
import com.manage.mapper.student.CommunityMapper;
import com.manage.service.BaseService;
import com.manage.util.PageData;
import com.manage.util.PageParam;

@Service
public class CommunityService implements BaseService<Community>, CommunityMapper {

	@Override
	public List<Community> queryAll(PageParam pageParam, String keyWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Community queryOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Community t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Community t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getCount(String keyWord) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Integer getNewComunityid() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteMany(List<Integer> ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PageData getPageData(PageParam pageParam, String keyWord) {
		// TODO Auto-generated method stub
		return null;
	}

//    @Autowired
//    private CommunityMapper communityMapper;
//
//    @Autowired
//    private CommunityRoleMapper communityRoleMapper;
//    
//    @Autowired
//    private StuCommunityMapper  stuCommunityMapper;
//    
//    @Override
//    public List<Community> queryAll(PageParam pageParam, String keyWord) {
//        return communityMapper.queryAll(pageParam, keyWord);
//    }
//
//    @Override
//    public Community queryOne(Integer id) {
//        // TODO Auto-generated method stub
//        return null;
//    }
//
//    @Override
//    public void deleteMany(List<Integer> ids) {
//        //删除社团
//        communityMapper.deleteMany(ids);
//        
//        //删除社团对应的角色
//        communityRoleMapper.deleteByCommid(ids);
//        
//        //当删除社团时,自动解除社团和学生的关系
//        stuCommunityMapper.deleteByCommids(ids);
//    }
//
//    @Override
//    public void save(Community t) {
//        //添加社团
//        communityMapper.save(t);
//        //获得刚刚添加的社团id
//        Integer communityid = communityMapper.getNewComunityid();
//        //自动添加对应的角色
//        communityRoleMapper.saveByCommid(communityid);
//    }
//
//    @Override
//    public void update(Community t) {
//        communityMapper.update(t);
//    }
//
//    @Override
//    public int getCount(String keyWord) {
//        return communityMapper.getCount(keyWord);
//    }
//
//    @Override
//    public PageData getPageData(PageParam pageParam, String keyWord) {
//        return new PageData(this.getCount(keyWord), this.queryAll(pageParam, keyWord));
//    }
//
//    @Override
//    public Integer getNewComunityid() {
//        return communityMapper.getNewComunityid();
//    }
//
//    @Override
//    public void delete(Integer id) {
//        // TODO Auto-generated method stub
//        
//    }

}
