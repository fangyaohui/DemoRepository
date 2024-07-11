package com.example.grpcdemoclient.config;

import com.example.grpcdemoclient.reader.impl.AppInfoReaderImpl;
import com.example.grpcdemoclient.stub.AppInfoSyncClient;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * 数据同步客户端SDK自动配置
 *
 * @Author luchao
 * @Description 主数据客户端自动装配类
 * @Date ：Created in 2023/3/14 16:37
 */
@Configuration
@ConditionalOnProperty(prefix = "board.gov.mdm.sync", name = "enabled", havingValue = "true")
@EnableConfigurationProperties(RpcProperties.class)
public class MdmClientAutoConfiguration {

    @Bean
    public AppInfoSyncClient metaDsConfigSyncClient(RpcProperties rpcProperties){
        return new AppInfoSyncClient(rpcProperties);
    }

    @Bean
    public AppInfoReaderImpl metaDsConfigCacheReader(){
        return new AppInfoReaderImpl();
    }


}
