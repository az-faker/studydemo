package com.demo.user.servie;

import com.demo.user.domain.User;

import java.util.List;

/**
 * UserService实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 10:37:43
 */
public interface UserService {
    /**
     * 保存用户
     *
     * @param user 用户实体
     * @return 保存成功 {@code true} 保存失败 {@code false}
     */
    Boolean save(User user);

    /**
     * 删除用户
     *
     * @param id 主键id
     * @return 删除成功 {@code true} 删除失败 {@code false}
     */
    Boolean delete(Long id);

    /**
     * 更新用户
     *
     * @param user 用户实体
     * @param id   主键id
     * @return 更新成功 {@code true} 更新失败 {@code false}
     */
    Boolean update(User user, Long id);

    /**
     * 获取单个用户
     *
     * @param id 主键id
     * @return 单个用户对象
     */
    User getUser(Long id);

    /**
     * 获取用户列表
     *
     * @param user 用户实体
     * @return 用户列表
     */
    List<User> getUser(User user);
}
