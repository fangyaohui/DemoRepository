package com.fang.demo.comfangdemomaven;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ComFangDemoMavenApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoMavenApplication.class, args);
    }

}
