package com.example.grpcdemoserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
//import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

//@SpringBootApplication(scanBasePackages = {"com.example.grpcdemoserver.*"})
@SpringBootApplication
@EnableDiscoveryClient
public class GrpcDemoServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(GrpcDemoServerApplication.class, args);
    }

}
