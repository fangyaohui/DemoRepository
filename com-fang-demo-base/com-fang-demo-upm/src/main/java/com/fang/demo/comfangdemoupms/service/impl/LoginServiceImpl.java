package com.fang.demo.comfangdemoupms.service.impl;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fang.demo.comfangdemocommunal.utils.JWTUtils;
import com.fang.demo.comfangdemoupms.mapper.UserInfoMapper;
import com.fang.demo.comfangdemoupms.service.LoginService;
import com.fang.demo.comfangdemoupms.utils.R;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import po.UserInfoPO;
import vo.LoginVO;

import java.util.UUID;

import static com.fang.demo.comfangdemoupms.config.DynamicConstant.LOGIN_ERROR;

/**
 * @FileName LoginServiceImpl
 * @Description
 * @Author yaoHui
 * @date 2024-07-18
 **/
@Slf4j
@Service
@AllArgsConstructor
public class LoginServiceImpl implements LoginService {

    private UserInfoMapper userInfoMapper;

    @Override
    public R<String> signIn(LoginVO loginVO) {
        UserInfoPO userInfoPO = userInfoMapper.selectOne(Wrappers.<UserInfoPO>lambdaQuery()
                .eq(UserInfoPO::getUserName,loginVO.getUserName())
                .eq(UserInfoPO::getPassword,loginVO.getPassword()));

        if(ObjectUtils.isEmpty(userInfoPO)){
            return R.failed(LOGIN_ERROR);
        }

        String uuid = String.valueOf(UUID.randomUUID());

        String token = JWTUtils.generateToken(uuid,userInfoPO.getRoleId());
        return R.ok(token);
    }
}