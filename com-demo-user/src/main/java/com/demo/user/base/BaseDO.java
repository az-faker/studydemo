package com.demo.user.base;

import com.demo.user.annotation.Column;
import com.demo.user.base.databind.TimeSecondsJsonDeserializer;
import com.demo.user.base.databind.TimeSecondsJsonSerializer;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.io.Serializable;
import java.util.Date;

/**
 * BaseDO实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 11:39:03
 */
public abstract class BaseDO<ID extends Serializable> implements Serializable {

    public abstract ID getId();

    public abstract void setId(ID id);

    @JsonSerialize(using = TimeSecondsJsonSerializer.class)
    @JsonDeserialize(using = TimeSecondsJsonDeserializer.class)
    @Column("ctime") private Date createTime;

    @JsonSerialize(using = TimeSecondsJsonSerializer.class)
    @JsonDeserialize(using = TimeSecondsJsonDeserializer.class)
    @Column("utime") private Date updateTime;
}
