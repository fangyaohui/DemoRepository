package com.example.grpcdemoserver.manager;

import com.fang.demo.rpc.SysApplicationServiceGrpc;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.devh.boot.grpc.server.service.GrpcService;

/**
 * @FileName AppDataManager
 * @Description
 * @Author yaoHui
 * @date 2024-07-04
 **/
@GrpcService
@Slf4j
@RequiredArgsConstructor
public class AppDataManager extends SysApplicationServiceGrpc.SysApplicationServiceImplBase {



}