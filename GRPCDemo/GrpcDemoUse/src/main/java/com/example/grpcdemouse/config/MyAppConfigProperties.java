package com.example.grpcdemouse.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @FileName ConfigDemo
 * @Description
 * @Author yaoHui
 * @date 2024-07-08
 **/
@Data
@Configuration
@ConfigurationProperties(prefix = "fang.yao.hui")
public class MyAppConfigProperties {

//    @Value("name")
    public String name;

    @Bean
    public AppConfigBean appConfigBean(){
        return new AppConfigBean(this.name);
    }
}