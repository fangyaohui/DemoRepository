package com.fang.demo.comfangdemoupm.service.impl;

import com.fang.demo.comfangdemoupm.mapper.BlogInfoMapper;
import com.fang.demo.comfangdemoupm.service.BlogInfoService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import po.BlogInfoPO;

/**
 * @FileName BlogInfoServiceImpl
 * @Description
 * @Author yaoHui
 * @date 2024-07-30
 **/
@Service
@AllArgsConstructor
@Slf4j
public class BlogInfoServiceImpl implements BlogInfoService {

    private BlogInfoMapper blogInfoMapper;

    @Override
    public void saveBlogInfo(BlogInfoPO blogInfoPO) {

        blogInfoMapper.save(blogInfoPO);

    }
}