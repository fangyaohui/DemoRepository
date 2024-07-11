package com.example.grpcdemoclient.interceptor;

import io.grpc.*;
import lombok.extern.slf4j.Slf4j;

import javax.annotation.Nullable;

/**
 * BoardGov主数据同步拦截器
 *
 * @Author luchao
 * @Description
 * @Date ：Created in 2023/3/9 20:17
 */
@Slf4j
public class MdmSyncClientInterceptor implements ClientInterceptor {
    @Override
    public <ReqT, RespT> ClientCall<ReqT, RespT> interceptCall(MethodDescriptor<ReqT, RespT> method,
                                                               CallOptions callOptions, Channel channel) {
        String fullMethodName = method.getFullMethodName();
        log.info("[BOARD-GOV_MDM-SYNC]-{}-Start to sync data...", fullMethodName);

        return new ForwardingClientCall.SimpleForwardingClientCall<ReqT, RespT>(channel.newCall(method, callOptions)){
            @Override
            public void start(Listener<RespT> responseListener, Metadata headers) {
                super.start(new ForwardingClientCallListener.SimpleForwardingClientCallListener<RespT>(responseListener) {
                    @Override
                    public void onClose(Status status, Metadata trailers) {
                        log.info("[BOARD-GOV_MDM-SYNC]-{}-End sync data...", fullMethodName);
                        super.onClose(status, trailers);
                    }
                }, headers);
        }

            @Override
            public void cancel(@Nullable String message, @Nullable Throwable cause) {
                log.error("[BOARD-GOV_MDM-SYNC]-{}-Failed to sync data!{}", fullMethodName, message, cause);
                super.cancel(message, cause);
            }
        };
    }
}
