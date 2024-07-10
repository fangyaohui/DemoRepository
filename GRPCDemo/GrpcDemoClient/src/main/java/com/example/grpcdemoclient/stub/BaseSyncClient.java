package com.example.grpcdemoclient.stub;

import com.example.grpcdemoclient.config.RpcProperties;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import io.micrometer.common.util.StringUtils;
import org.springframework.util.ObjectUtils;

import javax.annotation.Resource;

/**
 * @FileName BaseSyncClient
 * @Description 定义父类服务，创建Channel，避免重复书写创建Channel代码逻辑
 * @Author yaoHui
 * @date 2024-07-08
 **/
//@AllArgsConstructor
public class BaseSyncClient {

    @Resource
    private RpcProperties rpcProperties;

    public ManagedChannel managedChannel;

    public BaseSyncClient(RpcProperties rpcProperties){

        if(!ObjectUtils.isEmpty(rpcProperties) && !StringUtils.isEmpty(rpcProperties.getServer())){
            this.rpcProperties = rpcProperties;
        }

        this.managedChannel = ManagedChannelBuilder.forTarget(this.rpcProperties.getServer())
                .usePlaintext().build();
    }

    public BaseSyncClient(){
        this.managedChannel = ManagedChannelBuilder.forTarget(rpcProperties.getServer()).usePlaintext().build();
    }
}