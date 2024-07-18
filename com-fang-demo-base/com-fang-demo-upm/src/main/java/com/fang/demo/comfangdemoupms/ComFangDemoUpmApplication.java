package com.fang.demo.comfangdemoupms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

@SpringBootApplication
@EnableDiscoveryClient
@ComponentScan(value = {"com.fang.demo.comfangdemocommunal.*","com.fang.demo.comfangdemoupms.*"})
public class ComFangDemoUpmApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoUpmApplication.class, args);
    }

}
