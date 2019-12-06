package com.demo.user.aspect;

import cn.hutool.core.lang.Dict;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * 处理异常
 *
 * @author Faker
 * @version 1.0
 * @since 2019-08-05 18:15:24
 */
@Component
@Aspect
@Order(2)
@Slf4j
public class RpcExceptionAspect {

    /**
     * 用于统一处理Rest接口异常的Around(环绕)类型切面
     *
     * @param pjp 切面处理入口
     * @return Rest接口方法调用返回结果
     */
    @Around(value = "@annotation(org.springframework.web.bind.annotation.PostMapping) || " +
            "@annotation(org.springframework.web.bind.annotation.GetMapping) || " +
            "@annotation(org.springframework.web.bind.annotation.PutMapping) || " +
            "@annotation(org.springframework.web.bind.annotation.DeleteMapping)")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        try {
            return pjp.proceed();
        }
        catch(Exception e) {
            log.error("rpc exception!", e);
            return Dict.create().set("code", 500).set("msg", "失败").set("data", null);
        }
    }

}
