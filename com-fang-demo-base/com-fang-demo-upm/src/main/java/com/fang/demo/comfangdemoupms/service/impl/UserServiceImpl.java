package com.fang.demo.comfangdemoupms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fang.demo.comfangdemoupms.mapper.UserInfoMapper;
import com.fang.demo.comfangdemoupms.service.UserService;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;
import po.UserInfoPO;

import java.util.List;

/**
 * @FileName UserServiceImpl
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@DubboService
@Service
public class UserServiceImpl extends ServiceImpl<UserInfoMapper, UserInfoPO> implements UserService {


    @Override
    public List<UserInfoPO> getAllUserInfoList() {
        return baseMapper.selectList(null);
    }
}