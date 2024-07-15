package com.fang.demo.comfangdemouseclient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.fang.demo.*"})
@EnableDiscoveryClient
@EnableConfigurationProperties
public class ComFangDemoUseClientApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoUseClientApplication.class, args);
    }

}
