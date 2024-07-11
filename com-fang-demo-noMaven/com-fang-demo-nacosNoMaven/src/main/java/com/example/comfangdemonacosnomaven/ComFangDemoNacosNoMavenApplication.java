package com.example.comfangdemonacosnomaven;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ComFangDemoNacosNoMavenApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoNacosNoMavenApplication.class, args);
    }

}
