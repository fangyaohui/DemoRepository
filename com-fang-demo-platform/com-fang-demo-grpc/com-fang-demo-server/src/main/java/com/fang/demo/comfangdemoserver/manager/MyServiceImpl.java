package com.fang.demo.comfangdemoserver.manager;

import com.fang.demo.rpc.HelloReply;
import com.fang.demo.rpc.HelloRequest;
import com.fang.demo.rpc.MyServiceGrpc;
import io.grpc.stub.StreamObserver;
import net.devh.boot.grpc.server.service.GrpcService;

/**
 * @FileName MyServiceImpl
 * @Description
 * @Author yaoHui
 * @date 2024-07-15
 **/
@GrpcService
public class MyServiceImpl extends MyServiceGrpc.MyServiceImplBase {

    @Override
    public void sayHello(HelloRequest request, StreamObserver<HelloReply> responseObserver) {

        HelloReply reply = HelloReply.newBuilder()
                .setMessage("Hello World ==>" + request.getName())
                        .build();
        responseObserver.onNext(reply);
        responseObserver.onCompleted();
    }

}