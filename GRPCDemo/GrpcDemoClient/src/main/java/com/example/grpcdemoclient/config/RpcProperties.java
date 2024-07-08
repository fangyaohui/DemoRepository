package com.example.grpcdemoclient.config;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @FileName RpcProperties
 * @Description
 * @Author yaoHui
 * @date 2024-07-05
 **/
@Data
@Configuration
@ConfigurationProperties(prefix = "grpc.client")
public class RpcProperties {

    private String server;

}