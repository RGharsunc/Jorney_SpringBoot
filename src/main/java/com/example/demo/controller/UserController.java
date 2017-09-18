package com.example.demo.controller;

import com.example.demo.model.UserEntity;
import com.example.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Vardan on 11.08.2017.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user/register")
    public String registerUser(@ModelAttribute UserEntity userEntity) {
        userService.registerUser(userEntity);
        return "redirect:/home";
    }


}
