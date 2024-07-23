package com.fang.demo.comfangdemoconsumer;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo
@SpringBootApplication
public class ComFangDemoConsumerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComFangDemoConsumerApplication.class, args);
    }

}
