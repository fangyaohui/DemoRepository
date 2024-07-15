package com.fang.demo.comfangdemoclient.config;

import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import org.springframework.context.annotation.Bean;

/**
 * @FileName GrpcClientConfig
 * @Description
 * @Author yaoHui
 * @date 2024-07-15
 **/
public class GrpcClientConfig {

    @Bean
    public ManagedChannel managedChannel(){
        return ManagedChannelBuilder.forAddress("localhost",62591)
                .usePlaintext().build();
    }
}