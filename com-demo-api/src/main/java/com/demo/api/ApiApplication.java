package com.demo.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

/**
 * ApiApplication实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 10:29:34
 */
@SpringBootApplication
@RestController
public class ApiApplication {
    public static void main(String[] args) {
        SpringApplication.run(ApiApplication.class, args);
    }
}
