package com.fang.demo.comfangdemouseclient.controller;

import com.fang.demo.comfangdemoclient.service.GreeterClientService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @FileName SayHelloController
 * @Description
 * @Author yaoHui
 * @date 2024-07-15
 **/
@RestController
@RequestMapping("/sayHello")
@AllArgsConstructor
public class SayHelloController {

    private GreeterClientService greeterClientService;

    @RequestMapping("/getHelloWorld")
    public String getHelloWorld(){

        return greeterClientService.sayHello("Hello World");
    }
}