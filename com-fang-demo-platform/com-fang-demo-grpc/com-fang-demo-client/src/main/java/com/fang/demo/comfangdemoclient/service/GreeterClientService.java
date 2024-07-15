package com.fang.demo.comfangdemoclient.service;

import com.fang.demo.rpc.HelloRequest;
import com.fang.demo.rpc.MyServiceGrpc;
import net.devh.boot.grpc.client.inject.GrpcClient;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @FileName GreeterClientService
 * @Description
 * @Author yaoHui
 * @date 2024-07-15
 **/
@Service
public class GreeterClientService {

    @GrpcClient("com-fang-demo-server")
    private MyServiceGrpc.MyServiceBlockingStub blockingStub;

    public String sayHello(String name){
        HelloRequest request = HelloRequest.newBuilder().setName(name).build();
        return blockingStub.sayHello(request).getMessage();
    }
}