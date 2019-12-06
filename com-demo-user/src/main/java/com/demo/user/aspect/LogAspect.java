package com.demo.user.aspect;

import cn.hutool.json.JSONUtil;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * LogAspect实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 10:20:46
 */
@Component
@Aspect
@Order(1)
@Slf4j
public class LogAspect {

    @Around(value = "@annotation(com.demo.user.annotation.LogAnnotation)")
    public Object aroundServiceMethodCache(ProceedingJoinPoint pjp) throws Throwable {
        Signature signature = pjp.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;

        String className = pjp.getTarget().getClass().getName();
        String methodName = signature.getName();
        String[] paramNames = methodSignature.getParameterNames();
        Object[] args = pjp.getArgs();

        List<String> paramList = new ArrayList<>();
        for (int i = 0; i < paramNames.length; i++) {
            String paramName = paramNames[i];
            Object arg = args[i];
            if (arg != null) {
                paramList.add(String.format("%s: %s", paramName, arg instanceof Serializable ? JSONUtil.toJsonStr(arg) : arg));
            }
        }

        log.info("className: {}, methodName: {}, {}", className, methodName, String.join(", ", paramList));
        Object proceed = pjp.proceed();
        log.info("className: {}, methodName: {}， return: {}", className, methodName, JSONUtil.toJsonStr(proceed));
        return proceed;
    }
}
