package com.demo.user.controller;

import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import com.demo.user.constant.Const;
import com.demo.user.domain.User;
import com.demo.user.servie.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

/**
 * LoginController实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 10:37:22
 */
@Slf4j
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public ModelAndView login(@ModelAttribute("userForm") User user, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        if (null == user || StrUtil.isBlank(user.getUsername()) || StrUtil.isBlank(user.getPassword())) {
            log.error("# 账号或密码错误");
            mv.setViewName("redirect:/login/login");
            return mv;
        }

        User dbUser = userService.getUserByName(user.getUsername());
        if (dbUser == null) {
            log.error("# 账号或密码错误");
            mv.setViewName("redirect:/login/login");
        } else {
            String pass = SecureUtil.md5(user.getPassword() + Const.SALT_PREFIX + dbUser.getSalt());
            if (!Objects.equals(pass, dbUser.getPassword())) {
                log.error("# 密码校验失败");
                mv.setViewName("redirect:/login/login");
                return mv;
            }
            log.info("# 登录成功");
            mv.addObject(user);
            mv.setViewName("redirect:/login/qin");

            request.getSession().setAttribute("user", user);
        }


        return mv;
    }

    @GetMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

    @GetMapping("/register")
    public ModelAndView register() {
        log.info("# 注册");
        return new ModelAndView("user/addUser");
    }

    @GetMapping("/qin")
    public ModelAndView qin() {
        return new ModelAndView("user/qin");
    }

    @PostMapping("/qin")
    public ModelAndView getQin() {
        return new ModelAndView("user/getqin");
    }
}
