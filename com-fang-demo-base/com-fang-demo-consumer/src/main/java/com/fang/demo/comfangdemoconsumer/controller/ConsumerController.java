package com.fang.demo.comfangdemoconsumer.controller;

import com.fang.demo.comfangdemoupm.service.UserService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @FileName ConsumerController
 * @Description
 * @Author yaoHui
 * @date 2024-07-23
 **/
@RestController
@RequestMapping("/consumer")
public class ConsumerController {

    @DubboReference(interfaceClass = UserService.class)
    private UserService userService;

    @GetMapping("/sayHello")
    public String sayHello() {
        return userService.getAllUserInfoList().toString();
    }

}