package com.demo.user.client.id;

import org.springframework.stereotype.Component;

/**
 * RandomIdClient实体
 * 随机ID，当前时间戳+5位随机数
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 11:37:06
 */
@Component
public class RandomIdClient implements IdClient {
    @Override
    public long nextId(int count) {
        return Long.valueOf(System.currentTimeMillis() + random());
    }

    private String random() {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < 5; i++) {
            result.append((int) (Math.random() * 10));
        }
        return result.toString();
    }
}
