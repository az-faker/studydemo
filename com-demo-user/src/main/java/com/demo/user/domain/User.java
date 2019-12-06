package com.demo.user.domain;

import com.demo.user.annotation.Column;
import com.demo.user.annotation.Table;
import com.demo.user.base.BaseDO;
import lombok.Data;

import java.util.Date;

/**
 * User实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-05 17:20:02
 */
@Data
@Table("user")
public class User extends BaseDO<Long> {
    @Column("id")
    private Long id;
    @Column(("status"))
    private Integer status;
    @Column(("username"))
    private String username;
    @Column(("realname"))
    private String realName;
    @Column(("salt"))
    private String salt;
    @Column(("password"))
    private String password;
    @Column(("email"))
    private String email;
    @Column(("mobile"))
    private String mobile;
    @Column(("address"))
    private String address;
    @Column(("sex"))
    private Integer sex;
    @Column(("ctime"))
    private Date createTime;
    @Column(("utime"))
    private Date updateTime;
}
