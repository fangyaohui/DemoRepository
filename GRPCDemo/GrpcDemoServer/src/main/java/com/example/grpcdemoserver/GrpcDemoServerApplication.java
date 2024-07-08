package com.example.grpcdemoserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication(scanBasePackages = {"com.example.grpcdemoserver.*"})
@SpringBootApplication
public class GrpcDemoServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(GrpcDemoServerApplication.class, args);
    }

}
