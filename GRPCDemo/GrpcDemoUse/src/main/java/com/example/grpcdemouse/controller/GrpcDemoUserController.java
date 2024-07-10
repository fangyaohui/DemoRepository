package com.example.grpcdemouse.controller;

//import com.example.grpcdemoclient.reader.AppInfoReader;
import com.example.grpcdemoclient.reader.AppInfoReader;
import com.example.grpcdemouse.service.GrpcClientService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @FileName GrpcDemoUserController
 * @Description
 * @Author yaoHui
 * @date 2024-07-08
 **/
@RestController
@Slf4j
public class GrpcDemoUserController {

    @Resource
    private AppInfoReader appInfoReader;

    @Resource
    private GrpcClientService grpcClientService;

    @GetMapping("/getGrpcDemoTest")
    public String getGrpcDemoTest(){
        log.info("getGrpcDemoTest start running ...");
        return appInfoReader.getAllAppInfoList().toString();
//        return grpcClientService.sendMessage("name");
    }

}