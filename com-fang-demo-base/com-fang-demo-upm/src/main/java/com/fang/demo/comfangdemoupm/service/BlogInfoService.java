package com.fang.demo.comfangdemoupm.service;

import com.baomidou.mybatisplus.extension.service.IService;
import po.BlogInfoPO;

/**
 * @FileName BlogInfoService
 * @Description
 * @Author yaoHui
 * @date 2024-07-30
 **/
public interface BlogInfoService {

    void saveBlogInfo(BlogInfoPO blogInfoPO);
}