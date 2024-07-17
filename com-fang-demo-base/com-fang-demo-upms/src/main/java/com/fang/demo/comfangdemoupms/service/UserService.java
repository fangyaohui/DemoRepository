package com.fang.demo.comfangdemoupms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fang.demo.comfangdemoupms.entity.po.UserInfoPO;

import java.util.List;

/**
 * @FileName UserService
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
public interface UserService extends IService<UserInfoPO> {

    List<UserInfoPO> getAllUserInfoList();

}