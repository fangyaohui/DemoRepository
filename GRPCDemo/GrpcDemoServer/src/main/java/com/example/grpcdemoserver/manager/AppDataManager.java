package com.example.grpcdemoserver.manager;

import com.fang.demo.rpc.SysApplicationInfo;
import com.fang.demo.rpc.SysApplicationServiceGrpc;
import io.grpc.stub.StreamObserver;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.devh.boot.grpc.server.service.GrpcService;
import org.springframework.util.ObjectUtils;

/**
 * @FileName AppDataManager
 * @Description
 * @Author yaoHui
 * @date 2024-07-04
 **/
@GrpcService
@Slf4j
public class AppDataManager extends SysApplicationServiceGrpc.SysApplicationServiceImplBase {


    /**
    * @Description
    * @param request
    * @param responseObserver
    * @Author yaoHui
    * @Date 2024/7/5
    */
    @Override
    public void getAllAppInfoList(SysApplicationInfo.GetAllAppInfoListRequest request,
                                  StreamObserver<SysApplicationInfo.GetAllAppInfoListResponse> responseObserver) {

        if(ObjectUtils.isEmpty(request)){
            return ;
        }

        // 模拟获取所有的应用信息
        SysApplicationInfo.SysApplication app = SysApplicationInfo.SysApplication.newBuilder()
                .setId(1L)
                .setAppName("appName")
                .setAppType(1)
                .build();

        // 定义grpc服务response
        SysApplicationInfo.GetAllAppInfoListResponse response =
                SysApplicationInfo.GetAllAppInfoListResponse.newBuilder()
                        .setSuccess(true)
                        .setCode(1)
                        .setMsg("success")
                        .setAppInfo(app)
                        .build();
        // 第二种写法
//        SysApplicationInfo.GetAllAppInfoListResponse.Builder responseBuilder =
//                SysApplicationInfo.GetAllAppInfoListResponse.newBuilder()
//                        .setSuccess(true)
//                        .setCode(1)
//                        .setMsg("success");
//        if(!ObjectUtils.isEmpty(app)){
//            responseBuilder.setAppInfo(app);
//        }
//        SysApplicationInfo.GetAllAppInfoListResponse response = responseBuilder.build();

        responseObserver.onNext(response);
        responseObserver.onCompleted();

    }
}