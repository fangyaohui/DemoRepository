package com.fang.demo.comfangdemoauth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ComFangDemoAuthApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoAuthApplication.class, args);
    }

}
