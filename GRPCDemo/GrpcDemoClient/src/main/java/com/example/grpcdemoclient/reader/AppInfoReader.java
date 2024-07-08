package com.example.grpcdemoclient.reader;

import com.fang.demo.rpc.SysApplicationInfo;

/**
 * @FileName AppInfoReader
 * @Description
 * @Author yaoHui
 * @date 2024-07-05
 **/
public interface AppInfoReader {

    SysApplicationInfo.SysApplication getAllAppInfoList();

}