package com.example.grpcdemouse;

import com.example.grpcdemouse.config.MyAppConfigProperties;
import lombok.AllArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication(scanBasePackages = {"com.example.grpcdemoclient.reader.*",
//        "com.example.grpcdemouse.*","com.example.grpcdemoclient.*",})
@SpringBootApplication()
public class GrpcDemoUseApplication {

    public static void main(String[] args) {
        SpringApplication.run(GrpcDemoUseApplication.class, args);
    }

}
