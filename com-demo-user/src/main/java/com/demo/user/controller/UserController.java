package com.demo.user.controller;

import cn.hutool.core.lang.Dict;
import com.demo.user.annotation.LogAnnotation;
import com.demo.user.domain.User;
import com.demo.user.servie.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * UserController实体
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 10:37:04
 */
@Controller
@Slf4j
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

//    @PostMapping("/user")
//    @LogAnnotation
//    public Dict save(@RequestBody User user) {
//        Boolean save = userService.save(user);
//        return Dict.create().set("code", save ? 200 : 500).set("msg", save ? "成功" : "失败").set("data", save ? user : null);
//    }

    @PostMapping("/user")
    public ModelAndView save(@ModelAttribute("user") User user, HttpServletRequest request) {
        Boolean save = userService.save(user);
        log.debug("# 注册" + (save ? "成功" : "失败"));

        ModelAndView mv = new ModelAndView();
        if (save) {
            mv.setViewName("user/login");
            return mv;
        }
        mv.setViewName("user/addUser");
        return mv;
    }

    @DeleteMapping("/user/{id}")
    @LogAnnotation
    public Dict delete(@PathVariable Long id) {
        Boolean delete = userService.delete(id);
        return Dict.create().set("code", delete ? 200 : 500).set("msg", delete ? "成功" : "失败");
    }

    @PutMapping("/user/{id}")
    @LogAnnotation
    public Dict update(@RequestBody User user, @PathVariable Long id) {
        Boolean update = userService.update(user, id);
        return Dict.create().set("code", update ? 200 : 500).set("msg", update ? "成功" : "失败").set("data", update ? user : null);
    }

    @GetMapping("/user/{id}")
    @LogAnnotation
    public Dict getUser(@PathVariable Long id) {
        User user = userService.getUser(id);
        return Dict.create().set("code", 200).set("msg", "成功").set("data", user);
    }

    @GetMapping("/user")
    @LogAnnotation
    public Dict getUser(User user) {
        List<User> userList = userService.getUser(user);
        return Dict.create().set("code", 200).set("msg", "成功").set("data", userList);
    }
}
