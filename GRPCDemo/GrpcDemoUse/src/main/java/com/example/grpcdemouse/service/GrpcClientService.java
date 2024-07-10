package com.example.grpcdemouse.service;

import com.fang.demo.rpc.SysApplicationInfo;
import com.fang.demo.rpc.SysApplicationServiceGrpc;
import io.grpc.StatusRuntimeException;
import lombok.extern.slf4j.Slf4j;
import net.devh.boot.grpc.client.inject.GrpcClient;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

/**
 * @FileName GrpcClientService
 * @Description
 * @Author yaoHui
 * @date 2024-07-10
 **/
@Service
@Slf4j
public class GrpcClientService {

    @GrpcClient("local-grpc-server")
    private SysApplicationServiceGrpc.SysApplicationServiceBlockingStub applicationServiceBlockingStub;

    public String sendMessage(String name) {
        try {
            SysApplicationInfo.GetAllAppInfoListRequest request =SysApplicationInfo.GetAllAppInfoListRequest.newBuilder()
                    .setId(1)
                    .build();

            SysApplicationInfo.GetAllAppInfoListResponse response = applicationServiceBlockingStub.getAllAppInfoList(request);
            if(ObjectUtils.isEmpty(response) || ObjectUtils.isEmpty(response.getAppInfo())){
                log.info("response is empty");
                return null;
            }
        } catch (final StatusRuntimeException e) {
            return "FAILED with " + e.getStatus().getCode().name();
        }
        return "";
    }

}