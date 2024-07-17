package com.fang.demo.comfangdemoupms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fang.demo.comfangdemoupms.entity.po.UserInfoPO;
import com.fang.demo.comfangdemoupms.mapper.UserInfoMapper;
import com.fang.demo.comfangdemoupms.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @FileName UserServiceImpl
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@Service
public class UserServiceImpl extends ServiceImpl<UserInfoMapper, UserInfoPO> implements UserService {


    @Override
    public List<UserInfoPO> getAllUserInfoList() {
        return baseMapper.selectList(null);
    }
}