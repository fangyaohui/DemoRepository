package com.example.grpcdemoserver.config;

import com.example.grpcdemoserver.Interceptor.LogGrpcInterceptor;
import net.devh.boot.grpc.server.interceptor.GrpcGlobalServerInterceptor;
import org.springframework.context.annotation.Configuration;

/**
 * @FileName GlobalInterceptorConfiguration
 * @Description
 * @Author yaoHui
 * @date 2024-07-10
 **/
@Configuration(proxyBeanMethods = false)
public class GlobalInterceptorConfiguration {

    @GrpcGlobalServerInterceptor
    LogGrpcInterceptor logServerInterceptor() {
        return new LogGrpcInterceptor();
    }

}