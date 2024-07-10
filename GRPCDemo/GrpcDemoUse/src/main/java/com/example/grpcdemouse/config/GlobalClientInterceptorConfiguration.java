package com.example.grpcdemouse.config;

/**
 * @FileName GlobalClientInterceptorConfiguration
 * @Description
 * @Author yaoHui
 * @date 2024-07-10
 **/
import com.example.grpcdemouse.Interceptor.LogGrpcInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

import net.devh.boot.grpc.client.interceptor.GrpcGlobalClientInterceptor;

@Order(Ordered.LOWEST_PRECEDENCE)
@Configuration(proxyBeanMethods = false)
public class GlobalClientInterceptorConfiguration {

    @GrpcGlobalClientInterceptor
    LogGrpcInterceptor logClientInterceptor() {
        return new LogGrpcInterceptor();
    }

}