package com.fang.demo.comfangdemoserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ComFangDemoServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoServerApplication.class, args);
    }

}
