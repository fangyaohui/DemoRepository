package com.example.grpcdemoclient.config;

import com.example.grpcdemoclient.reader.AppInfoReader;
import com.example.grpcdemoclient.reader.impl.AppInfoReaderImpl;
import com.example.grpcdemoclient.stub.AppInfoSyncClient;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @FileName RpcClientAutoConfiguration
 * @Description
 * @Author yaoHui
 * @date 2024-07-05
 **/
@Configuration
@EnableConfigurationProperties(RpcProperties.class)
public class RpcClientAutoConfiguration {

    @Bean
    public AppInfoSyncClient appInfoSyncClient(RpcProperties rpcProperties){
        return new AppInfoSyncClient(rpcProperties);
    }

    @Bean
    public AppInfoReader appInfoReader(){
        return new AppInfoReaderImpl();
    }

}