package com.demo.user.controller;

import cn.hutool.core.util.ObjectUtil;
import com.demo.user.domain.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * IndexController实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 14:24:40
 */
@Slf4j
@Controller
public class IndexController {
    @GetMapping(value = {"", "/"})
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        User user = (User) request.getSession().getAttribute("user");
        if (ObjectUtil.isNull(user)) {
            mv.setViewName("redirect:login/login");
        } else {
            mv.setViewName("redirect:login/qin");
            mv.addObject(user);
        }

        return mv;
    }
}
