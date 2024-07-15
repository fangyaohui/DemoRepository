package com.fang.demo.comfangdemoclient.controller;

import com.fang.demo.comfangdemoclient.service.GreeterClientService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @FileName controller
 * @Description
 * @Author yaoHui
 * @date 2024-07-15
 **/
@RestController
@RequestMapping("/client")
@AllArgsConstructor
public class controller {

    private GreeterClientService greeterClientService;

    @RequestMapping("/getGrpc")
    public String getGrpc(){
        String name = "fangyaohui";
        return greeterClientService.sayHello(name);
    }
}