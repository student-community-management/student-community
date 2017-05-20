package com.manage.mapper.discuss;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.manage.entity.LockDiscuss;

public interface LockDiscussMapper {

    /**
     * 通过id查找
     * @param id
     * @return
     */
    LockDiscuss getByid(Integer id);

    /**
     * 锁定一组讨论
     * @param lockDiscusses
     */
    void save(@Param("lockDiscusses") List<LockDiscuss> lockDiscusses);

    /**
     * 将锁定信息的处理状态改为已处理
     * @param id 讨论的id
     */
    void setLockDiscussStatus(@Param("id") Integer id);

    /**
     * 得到被锁定的讨论的原因(message)和处理状态(status)
     * message:锁定的原因是后台管理员锁定时给出的原因
     * status:处理状态是前台学生对锁定结果的处理,当修改讨论后才会变为已经处理
     * 
     * @param discussid 被锁定的讨论的id
     * @return
     */
    Map<String, String> getLockInfo(@Param("id") Integer discussid);

}
