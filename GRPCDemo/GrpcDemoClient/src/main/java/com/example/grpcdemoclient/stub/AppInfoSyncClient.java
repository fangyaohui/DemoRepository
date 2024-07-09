package com.example.grpcdemoclient.stub;

import com.example.grpcdemoclient.config.RpcProperties;
import com.fang.demo.rpc.SysApplicationInfo;
import com.fang.demo.rpc.SysApplicationServiceGrpc;
import io.grpc.ManagedChannel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;

/**
 * @FileName AppInfoSyncClient
 * @Description
 * @Author yaoHui
 * @date 2024-07-05
 **/
@Slf4j
public class AppInfoSyncClient extends BaseSyncClient{

    private final SysApplicationServiceGrpc.SysApplicationServiceBlockingStub applicationServiceBlockingStub;

    public AppInfoSyncClient(RpcProperties rpcProperties){
        super(rpcProperties);
        this.applicationServiceBlockingStub = SysApplicationServiceGrpc.newBlockingStub(this.managedChannel);
    }

    public SysApplicationInfo.GetAllAppInfoListResponse getAllAppInfoListResponse(
            SysApplicationInfo.GetAllAppInfoListRequest request){
        if(ObjectUtils.isEmpty(request)){
            log.info("request is empty");
            return null;
        }

        return applicationServiceBlockingStub.getAllAppInfoList(request);
    }


}