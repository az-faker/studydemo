package com.demo.user.dao;

import com.demo.user.base.BaseDao;
import com.demo.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * UserDao实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 11:16:22
 */
@Repository
public class UserDao extends BaseDao<User, Long> {

    @Autowired
    public UserDao(JdbcTemplate jdbcTemplate) {
        super(jdbcTemplate);
    }

    /**
     * 保存用户
     *
     * @param user 用户对象
     * @return 操作影响行数
     */
    public Integer insert(User user) {
        return super.insert(user, true);
    }

    /**
     * 根据主键删除用户
     *
     * @param id 主键id
     * @return 操作影响行数
     */
    public Integer delete(Long id) {
        return super.deleteById(id);
    }

    /**
     * 更新用户
     *
     * @param user 用户对象
     * @param id   主键id
     * @return 操作影响行数
     */
    public Integer update(User user, Long id) {
        return super.updateById(user, id, true);
    }

    /**
     * 根据主键获取用户
     *
     * @param id 主键id
     * @return id对应的用户
     */
    public User selectById(Long id) {
        return super.findOneById(id);
    }

    /**
     * 根据查询条件获取用户列表
     *
     * @param user 用户查询条件
     * @return 用户列表
     */
    public List<User> selectUserList(User user) {
        return super.findByExample(user);
    }
}
