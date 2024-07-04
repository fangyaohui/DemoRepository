package com.fang.demo.rpc;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.2)",
    comments = "Source: BizObjStatistics.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class BizObjStatisticsUpdateServiceGrpc {

  private BizObjStatisticsUpdateServiceGrpc() {}

  public static final String SERVICE_NAME = "BizObjStatisticsUpdateService";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest,
      com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse> getUpdateBizObjStatisticsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "updateBizObjStatistics",
      requestType = com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest.class,
      responseType = com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest,
      com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse> getUpdateBizObjStatisticsMethod() {
    io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest, com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse> getUpdateBizObjStatisticsMethod;
    if ((getUpdateBizObjStatisticsMethod = BizObjStatisticsUpdateServiceGrpc.getUpdateBizObjStatisticsMethod) == null) {
      synchronized (BizObjStatisticsUpdateServiceGrpc.class) {
        if ((getUpdateBizObjStatisticsMethod = BizObjStatisticsUpdateServiceGrpc.getUpdateBizObjStatisticsMethod) == null) {
          BizObjStatisticsUpdateServiceGrpc.getUpdateBizObjStatisticsMethod = getUpdateBizObjStatisticsMethod =
              io.grpc.MethodDescriptor.<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest, com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "updateBizObjStatistics"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse.getDefaultInstance()))
              .setSchemaDescriptor(new BizObjStatisticsUpdateServiceMethodDescriptorSupplier("updateBizObjStatistics"))
              .build();
        }
      }
    }
    return getUpdateBizObjStatisticsMethod;
  }

  private static volatile io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest,
      com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse> getGetBizObjStatisticsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "getBizObjStatistics",
      requestType = com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest.class,
      responseType = com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest,
      com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse> getGetBizObjStatisticsMethod() {
    io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest, com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse> getGetBizObjStatisticsMethod;
    if ((getGetBizObjStatisticsMethod = BizObjStatisticsUpdateServiceGrpc.getGetBizObjStatisticsMethod) == null) {
      synchronized (BizObjStatisticsUpdateServiceGrpc.class) {
        if ((getGetBizObjStatisticsMethod = BizObjStatisticsUpdateServiceGrpc.getGetBizObjStatisticsMethod) == null) {
          BizObjStatisticsUpdateServiceGrpc.getGetBizObjStatisticsMethod = getGetBizObjStatisticsMethod =
              io.grpc.MethodDescriptor.<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest, com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "getBizObjStatistics"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse.getDefaultInstance()))
              .setSchemaDescriptor(new BizObjStatisticsUpdateServiceMethodDescriptorSupplier("getBizObjStatistics"))
              .build();
        }
      }
    }
    return getGetBizObjStatisticsMethod;
  }

  private static volatile io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest,
      com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse> getBatchQueryBizObjStatisticsListMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "batchQueryBizObjStatisticsList",
      requestType = com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest.class,
      responseType = com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest,
      com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse> getBatchQueryBizObjStatisticsListMethod() {
    io.grpc.MethodDescriptor<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest, com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse> getBatchQueryBizObjStatisticsListMethod;
    if ((getBatchQueryBizObjStatisticsListMethod = BizObjStatisticsUpdateServiceGrpc.getBatchQueryBizObjStatisticsListMethod) == null) {
      synchronized (BizObjStatisticsUpdateServiceGrpc.class) {
        if ((getBatchQueryBizObjStatisticsListMethod = BizObjStatisticsUpdateServiceGrpc.getBatchQueryBizObjStatisticsListMethod) == null) {
          BizObjStatisticsUpdateServiceGrpc.getBatchQueryBizObjStatisticsListMethod = getBatchQueryBizObjStatisticsListMethod =
              io.grpc.MethodDescriptor.<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest, com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "batchQueryBizObjStatisticsList"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse.getDefaultInstance()))
              .setSchemaDescriptor(new BizObjStatisticsUpdateServiceMethodDescriptorSupplier("batchQueryBizObjStatisticsList"))
              .build();
        }
      }
    }
    return getBatchQueryBizObjStatisticsListMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static BizObjStatisticsUpdateServiceStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<BizObjStatisticsUpdateServiceStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<BizObjStatisticsUpdateServiceStub>() {
        @java.lang.Override
        public BizObjStatisticsUpdateServiceStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new BizObjStatisticsUpdateServiceStub(channel, callOptions);
        }
      };
    return BizObjStatisticsUpdateServiceStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static BizObjStatisticsUpdateServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<BizObjStatisticsUpdateServiceBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<BizObjStatisticsUpdateServiceBlockingStub>() {
        @java.lang.Override
        public BizObjStatisticsUpdateServiceBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new BizObjStatisticsUpdateServiceBlockingStub(channel, callOptions);
        }
      };
    return BizObjStatisticsUpdateServiceBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static BizObjStatisticsUpdateServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<BizObjStatisticsUpdateServiceFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<BizObjStatisticsUpdateServiceFutureStub>() {
        @java.lang.Override
        public BizObjStatisticsUpdateServiceFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new BizObjStatisticsUpdateServiceFutureStub(channel, callOptions);
        }
      };
    return BizObjStatisticsUpdateServiceFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class BizObjStatisticsUpdateServiceImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     **
     *更新业务对象信息
     * </pre>
     */
    public void updateBizObjStatistics(com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUpdateBizObjStatisticsMethod(), responseObserver);
    }

    /**
     * <pre>
     **
     *获取单个业务对象信息
     * </pre>
     */
    public void getBizObjStatistics(com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetBizObjStatisticsMethod(), responseObserver);
    }

    /**
     * <pre>
     **
     *批量查询统计业务对象信息列表
     * </pre>
     */
    public void batchQueryBizObjStatisticsList(com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getBatchQueryBizObjStatisticsListMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getUpdateBizObjStatisticsMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest,
                com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse>(
                  this, METHODID_UPDATE_BIZ_OBJ_STATISTICS)))
          .addMethod(
            getGetBizObjStatisticsMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest,
                com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse>(
                  this, METHODID_GET_BIZ_OBJ_STATISTICS)))
          .addMethod(
            getBatchQueryBizObjStatisticsListMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest,
                com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse>(
                  this, METHODID_BATCH_QUERY_BIZ_OBJ_STATISTICS_LIST)))
          .build();
    }
  }

  /**
   */
  public static final class BizObjStatisticsUpdateServiceStub extends io.grpc.stub.AbstractAsyncStub<BizObjStatisticsUpdateServiceStub> {
    private BizObjStatisticsUpdateServiceStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected BizObjStatisticsUpdateServiceStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new BizObjStatisticsUpdateServiceStub(channel, callOptions);
    }

    /**
     * <pre>
     **
     *更新业务对象信息
     * </pre>
     */
    public void updateBizObjStatistics(com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUpdateBizObjStatisticsMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     **
     *获取单个业务对象信息
     * </pre>
     */
    public void getBizObjStatistics(com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetBizObjStatisticsMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     **
     *批量查询统计业务对象信息列表
     * </pre>
     */
    public void batchQueryBizObjStatisticsList(com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getBatchQueryBizObjStatisticsListMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class BizObjStatisticsUpdateServiceBlockingStub extends io.grpc.stub.AbstractBlockingStub<BizObjStatisticsUpdateServiceBlockingStub> {
    private BizObjStatisticsUpdateServiceBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected BizObjStatisticsUpdateServiceBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new BizObjStatisticsUpdateServiceBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     **
     *更新业务对象信息
     * </pre>
     */
    public com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse updateBizObjStatistics(com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpdateBizObjStatisticsMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     **
     *获取单个业务对象信息
     * </pre>
     */
    public com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse getBizObjStatistics(com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetBizObjStatisticsMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     **
     *批量查询统计业务对象信息列表
     * </pre>
     */
    public com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse batchQueryBizObjStatisticsList(com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getBatchQueryBizObjStatisticsListMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class BizObjStatisticsUpdateServiceFutureStub extends io.grpc.stub.AbstractFutureStub<BizObjStatisticsUpdateServiceFutureStub> {
    private BizObjStatisticsUpdateServiceFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected BizObjStatisticsUpdateServiceFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new BizObjStatisticsUpdateServiceFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     **
     *更新业务对象信息
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse> updateBizObjStatistics(
        com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpdateBizObjStatisticsMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     **
     *获取单个业务对象信息
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse> getBizObjStatistics(
        com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetBizObjStatisticsMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     **
     *批量查询统计业务对象信息列表
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse> batchQueryBizObjStatisticsList(
        com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getBatchQueryBizObjStatisticsListMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_UPDATE_BIZ_OBJ_STATISTICS = 0;
  private static final int METHODID_GET_BIZ_OBJ_STATISTICS = 1;
  private static final int METHODID_BATCH_QUERY_BIZ_OBJ_STATISTICS_LIST = 2;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final BizObjStatisticsUpdateServiceImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(BizObjStatisticsUpdateServiceImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_UPDATE_BIZ_OBJ_STATISTICS:
          serviceImpl.updateBizObjStatistics((com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsRequest) request,
              (io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.UpdateBizObjStatisticsResponse>) responseObserver);
          break;
        case METHODID_GET_BIZ_OBJ_STATISTICS:
          serviceImpl.getBizObjStatistics((com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusRequest) request,
              (io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.GetBizObjStatisticsStatusResponse>) responseObserver);
          break;
        case METHODID_BATCH_QUERY_BIZ_OBJ_STATISTICS_LIST:
          serviceImpl.batchQueryBizObjStatisticsList((com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListRequest) request,
              (io.grpc.stub.StreamObserver<com.fang.demo.rpc.BizObjStatisticsInfo.BatchQueryBizObjStatisticsListResponse>) responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  private static abstract class BizObjStatisticsUpdateServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    BizObjStatisticsUpdateServiceBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return com.fang.demo.rpc.BizObjStatisticsInfo.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("BizObjStatisticsUpdateService");
    }
  }

  private static final class BizObjStatisticsUpdateServiceFileDescriptorSupplier
      extends BizObjStatisticsUpdateServiceBaseDescriptorSupplier {
    BizObjStatisticsUpdateServiceFileDescriptorSupplier() {}
  }

  private static final class BizObjStatisticsUpdateServiceMethodDescriptorSupplier
      extends BizObjStatisticsUpdateServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    BizObjStatisticsUpdateServiceMethodDescriptorSupplier(String methodName) {
      this.methodName = methodName;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (BizObjStatisticsUpdateServiceGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new BizObjStatisticsUpdateServiceFileDescriptorSupplier())
              .addMethod(getUpdateBizObjStatisticsMethod())
              .addMethod(getGetBizObjStatisticsMethod())
              .addMethod(getBatchQueryBizObjStatisticsListMethod())
              .build();
        }
      }
    }
    return result;
  }
}
