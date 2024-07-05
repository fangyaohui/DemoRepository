package com.example.grpcdemoclient.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @FileName RpcProperties
 * @Description
 * @Author yaoHui
 * @date 2024-07-05
 **/
@ConfigurationProperties(prefix = "grpc.client")
@Data
@Configurable
public class RpcProperties {
}