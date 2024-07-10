package com.fang.demo.rpc;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 * <pre>
 * 接口类
 * </pre>
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.1)",
    comments = "Source: user.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class UserServiceApiGrpc {

  private UserServiceApiGrpc() {}

  public static final String SERVICE_NAME = "UserServiceApi";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.fang.demo.rpc.UserServiceProto.LoginInfoDTO,
      com.fang.demo.rpc.UserServiceProto.LoginResultVo> getLoginMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "login",
      requestType = com.fang.demo.rpc.UserServiceProto.LoginInfoDTO.class,
      responseType = com.fang.demo.rpc.UserServiceProto.LoginResultVo.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.fang.demo.rpc.UserServiceProto.LoginInfoDTO,
      com.fang.demo.rpc.UserServiceProto.LoginResultVo> getLoginMethod() {
    io.grpc.MethodDescriptor<com.fang.demo.rpc.UserServiceProto.LoginInfoDTO, com.fang.demo.rpc.UserServiceProto.LoginResultVo> getLoginMethod;
    if ((getLoginMethod = UserServiceApiGrpc.getLoginMethod) == null) {
      synchronized (UserServiceApiGrpc.class) {
        if ((getLoginMethod = UserServiceApiGrpc.getLoginMethod) == null) {
          UserServiceApiGrpc.getLoginMethod = getLoginMethod =
              io.grpc.MethodDescriptor.<com.fang.demo.rpc.UserServiceProto.LoginInfoDTO, com.fang.demo.rpc.UserServiceProto.LoginResultVo>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "login"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.UserServiceProto.LoginInfoDTO.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.fang.demo.rpc.UserServiceProto.LoginResultVo.getDefaultInstance()))
              .setSchemaDescriptor(new UserServiceApiMethodDescriptorSupplier("login"))
              .build();
        }
      }
    }
    return getLoginMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static UserServiceApiStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UserServiceApiStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<UserServiceApiStub>() {
        @java.lang.Override
        public UserServiceApiStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new UserServiceApiStub(channel, callOptions);
        }
      };
    return UserServiceApiStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static UserServiceApiBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UserServiceApiBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<UserServiceApiBlockingStub>() {
        @java.lang.Override
        public UserServiceApiBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new UserServiceApiBlockingStub(channel, callOptions);
        }
      };
    return UserServiceApiBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static UserServiceApiFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UserServiceApiFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<UserServiceApiFutureStub>() {
        @java.lang.Override
        public UserServiceApiFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new UserServiceApiFutureStub(channel, callOptions);
        }
      };
    return UserServiceApiFutureStub.newStub(factory, channel);
  }

  /**
   * <pre>
   * 接口类
   * </pre>
   */
  public static abstract class UserServiceApiImplBase implements io.grpc.BindableService {

    /**
     */
    public void login(com.fang.demo.rpc.UserServiceProto.LoginInfoDTO request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.UserServiceProto.LoginResultVo> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getLoginMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getLoginMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.fang.demo.rpc.UserServiceProto.LoginInfoDTO,
                com.fang.demo.rpc.UserServiceProto.LoginResultVo>(
                  this, METHODID_LOGIN)))
          .build();
    }
  }

  /**
   * <pre>
   * 接口类
   * </pre>
   */
  public static final class UserServiceApiStub extends io.grpc.stub.AbstractAsyncStub<UserServiceApiStub> {
    private UserServiceApiStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UserServiceApiStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UserServiceApiStub(channel, callOptions);
    }

    /**
     */
    public void login(com.fang.demo.rpc.UserServiceProto.LoginInfoDTO request,
        io.grpc.stub.StreamObserver<com.fang.demo.rpc.UserServiceProto.LoginResultVo> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getLoginMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   * <pre>
   * 接口类
   * </pre>
   */
  public static final class UserServiceApiBlockingStub extends io.grpc.stub.AbstractBlockingStub<UserServiceApiBlockingStub> {
    private UserServiceApiBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UserServiceApiBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UserServiceApiBlockingStub(channel, callOptions);
    }

    /**
     */
    public com.fang.demo.rpc.UserServiceProto.LoginResultVo login(com.fang.demo.rpc.UserServiceProto.LoginInfoDTO request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getLoginMethod(), getCallOptions(), request);
    }
  }

  /**
   * <pre>
   * 接口类
   * </pre>
   */
  public static final class UserServiceApiFutureStub extends io.grpc.stub.AbstractFutureStub<UserServiceApiFutureStub> {
    private UserServiceApiFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UserServiceApiFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UserServiceApiFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.fang.demo.rpc.UserServiceProto.LoginResultVo> login(
        com.fang.demo.rpc.UserServiceProto.LoginInfoDTO request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getLoginMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_LOGIN = 0;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final UserServiceApiImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(UserServiceApiImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_LOGIN:
          serviceImpl.login((com.fang.demo.rpc.UserServiceProto.LoginInfoDTO) request,
              (io.grpc.stub.StreamObserver<com.fang.demo.rpc.UserServiceProto.LoginResultVo>) responseObserver);
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

  private static abstract class UserServiceApiBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    UserServiceApiBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return com.fang.demo.rpc.UserServiceProto.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("UserServiceApi");
    }
  }

  private static final class UserServiceApiFileDescriptorSupplier
      extends UserServiceApiBaseDescriptorSupplier {
    UserServiceApiFileDescriptorSupplier() {}
  }

  private static final class UserServiceApiMethodDescriptorSupplier
      extends UserServiceApiBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    UserServiceApiMethodDescriptorSupplier(String methodName) {
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
      synchronized (UserServiceApiGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new UserServiceApiFileDescriptorSupplier())
              .addMethod(getLoginMethod())
              .build();
        }
      }
    }
    return result;
  }
}
