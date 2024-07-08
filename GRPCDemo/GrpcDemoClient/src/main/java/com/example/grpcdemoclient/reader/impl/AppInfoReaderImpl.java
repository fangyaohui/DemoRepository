package com.example.grpcdemoclient.reader.impl;

import com.example.grpcdemoclient.reader.AppInfoReader;
import com.example.grpcdemoclient.stub.AppInfoSyncClient;
import com.fang.demo.rpc.SysApplicationInfo;
import com.fang.demo.rpc.SysApplicationServiceGrpc;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;

import javax.annotation.Resource;

/**
 * @FileName AppInfoReaderImpl
 * @Description
 * @Author yaoHui
 * @date 2024-07-05
 **/
@Slf4j
@Component
//@AllArgsConstructor
public class AppInfoReaderImpl implements AppInfoReader {

    @Resource
    private AppInfoSyncClient appInfoSyncClient;

    @Override
    public SysApplicationInfo.SysApplication getAllAppInfoList() {

        SysApplicationInfo.GetAllAppInfoListRequest request =SysApplicationInfo.GetAllAppInfoListRequest.newBuilder()
                .build();

        SysApplicationInfo.GetAllAppInfoListResponse response = appInfoSyncClient.getAllAppInfoListResponse(request);
        if(ObjectUtils.isEmpty(response) || ObjectUtils.isEmpty(response.getAppInfo())){
            log.info("response is empty");
            return null;
        }

        return response.getAppInfo();
    }
}