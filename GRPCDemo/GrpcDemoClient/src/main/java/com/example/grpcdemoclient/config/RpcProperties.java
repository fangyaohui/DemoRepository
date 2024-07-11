package com.example.grpcdemoclient.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;


/**
 * gRPC配置属性定义
 *
 * @Author luchao
 * @Description
 * @Date ：Created in 2023/3/14 17:17
 */
@ConfigurationProperties(prefix = "board.gov.mdm.sync")
@Data
@Configuration
public class RpcProperties {
    /**
     * 数据同步开关
     * 默认为true
     */
    private Boolean enabled = true;

    /**
     * 数据同步服务地址
     * gRPC服务端地址
     */
    private String serverAddr;

    /**
     * 是否数据同步gRPC拦截器已开启
     */
    private Boolean interceptorEnabled = true;

}
