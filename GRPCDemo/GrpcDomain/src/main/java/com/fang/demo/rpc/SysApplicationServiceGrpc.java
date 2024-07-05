package com.fang.demo.rpc;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.1)",
    comments = "Source: Application.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class SysApplicationServiceGrpc {

  private SysApplicationServiceGrpc() {}

  public static final String SERVICE_NAME = "SysApplicationService";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest,
      com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse> getGetAllAppInfoListMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "getAllAppInfoList",
      requestType = com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest.class,
      responseType = com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest,
      com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse> getGetAllAppInfoListMethod() {
    io.grpc.MethodDescriptor<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest, com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse> getGetAllAppInfoListMethod;
    if ((getGetAllAppInfoListMethod = SysApplicationServiceGrpc.getGetAllAppInfoListMethod) == null) {
      synchronized (SysApplicationServiceGrpc.class) {
        if ((getGetAllAppInfoListMethod = SysApplicationServiceGrpc.getGetAllAppInfoListMethod) == null) {
          SysApplicationServiceGrpc.getGetAllAppInfoListMethod = getGetAllAppInfoListMethod =
              io.grpc.MethodDescriptor.<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest, com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "getAllAppInfoList"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse.getDefaultInstance()))
              .setSchemaDescriptor(new SysApplicationServiceMethodDescriptorSupplier("getAllAppInfoList"))
              .build();
        }
      }
    }
    return getGetAllAppInfoListMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static SysApplicationServiceStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<SysApplicationServiceStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<SysApplicationServiceStub>() {
        @java.lang.Override
        public SysApplicationServiceStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new SysApplicationServiceStub(channel, callOptions);
        }
      };
    return SysApplicationServiceStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static SysApplicationServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<SysApplicationServiceBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<SysApplicationServiceBlockingStub>() {
        @java.lang.Override
        public SysApplicationServiceBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new SysApplicationServiceBlockingStub(channel, callOptions);
        }
      };
    return SysApplicationServiceBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static SysApplicationServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<SysApplicationServiceFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<SysApplicationServiceFutureStub>() {
        @java.lang.Override
        public SysApplicationServiceFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new SysApplicationServiceFutureStub(channel, callOptions);
        }
      };
    return SysApplicationServiceFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class SysApplicationServiceImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     **
     *查询所有应用信息
     * </pre>
     */
    public void getAllAppInfoList(com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetAllAppInfoListMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getGetAllAppInfoListMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest,
                com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse>(
                  this, METHODID_GET_ALL_APP_INFO_LIST)))
          .build();
    }
  }

  /**
   */
  public static final class SysApplicationServiceStub extends io.grpc.stub.AbstractAsyncStub<SysApplicationServiceStub> {
    private SysApplicationServiceStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected SysApplicationServiceStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new SysApplicationServiceStub(channel, callOptions);
    }

    /**
     * <pre>
     **
     *查询所有应用信息
     * </pre>
     */
    public void getAllAppInfoList(com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetAllAppInfoListMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class SysApplicationServiceBlockingStub extends io.grpc.stub.AbstractBlockingStub<SysApplicationServiceBlockingStub> {
    private SysApplicationServiceBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected SysApplicationServiceBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new SysApplicationServiceBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     **
     *查询所有应用信息
     * </pre>
     */
    public com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse getAllAppInfoList(com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetAllAppInfoListMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class SysApplicationServiceFutureStub extends io.grpc.stub.AbstractFutureStub<SysApplicationServiceFutureStub> {
    private SysApplicationServiceFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected SysApplicationServiceFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new SysApplicationServiceFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     **
     *查询所有应用信息
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse> getAllAppInfoList(
        com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetAllAppInfoListMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_GET_ALL_APP_INFO_LIST = 0;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final SysApplicationServiceImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(SysApplicationServiceImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_GET_ALL_APP_INFO_LIST:
          serviceImpl.getAllAppInfoList((com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListRequest) request,
              (io.grpc.stub.StreamObserver<com.fang.demo.rpc.SysApplicationInfo.GetAllAppInfoListResponse>) responseObserver);
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

  private static abstract class SysApplicationServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    SysApplicationServiceBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return com.fang.demo.rpc.SysApplicationInfo.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("SysApplicationService");
    }
  }

  private static final class SysApplicationServiceFileDescriptorSupplier
      extends SysApplicationServiceBaseDescriptorSupplier {
    SysApplicationServiceFileDescriptorSupplier() {}
  }

  private static final class SysApplicationServiceMethodDescriptorSupplier
      extends SysApplicationServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    SysApplicationServiceMethodDescriptorSupplier(String methodName) {
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
      synchronized (SysApplicationServiceGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new SysApplicationServiceFileDescriptorSupplier())
              .addMethod(getGetAllAppInfoListMethod())
              .build();
        }
      }
    }
    return result;
  }
}
