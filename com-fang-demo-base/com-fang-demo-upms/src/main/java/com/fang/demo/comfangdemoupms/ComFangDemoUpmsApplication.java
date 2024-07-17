package com.fang.demo.comfangdemoupms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ComFangDemoUpmsApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoUpmsApplication.class, args);
    }

}
