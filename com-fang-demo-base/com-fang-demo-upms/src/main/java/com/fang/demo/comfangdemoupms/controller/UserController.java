package com.fang.demo.comfangdemoupms.controller;

import com.fang.demo.comfangdemoupms.entity.po.UserInfoPO;
import com.fang.demo.comfangdemoupms.service.UserService;
import com.fang.demo.comfangdemoupms.utils.R;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @FileName UserController
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@RestController
@RequestMapping("/user")
@AllArgsConstructor
@Slf4j
public class UserController {

    private UserService userService;

    @GetMapping("/getAllUserInfoList")
    public R<String> getAllUserInfoList(){
        List<UserInfoPO> userInfoPOList = userService.getAllUserInfoList();
        if(userInfoPOList.isEmpty()){
            return null;
        }
        return R.ok(userInfoPOList.toString());
    }

}