package com.fang.demo.comfangdemogateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.cloud.openfeign.FeignClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ComFangDemoGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoGatewayApplication.class, args);
    }

}
