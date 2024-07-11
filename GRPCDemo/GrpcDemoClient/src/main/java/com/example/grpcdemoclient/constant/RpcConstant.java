package com.example.grpcdemoclient.constant;

/**
 * RPC操作相关常量定义
 *
 * @Author luchao
 * @Description
 * @Date ：Created in 2023/3/9 19:18
 */
public class RpcConstant {
    /**
     * 默认主数据同步服务地址参数名称
     * (-D启动参数名称)
     */
    public final static String DEFAULT_RPC_SERVER_ADDRESS_PARAM_NAME = "board.gov.mdm.sync.addr";

    /**
     * 默认主数据同步服务地址
     */
    public final static String DEFAULT_RPC_SERVER_ADDRESS_VALUE = "127.0.0.1:9601";

    /**
     * 默认RPC连接终止间隔时间(1s)
     */
    public final static Integer DEFAULT_RPC_CONN_TERMINATE_INTERVAL = 1;
}
