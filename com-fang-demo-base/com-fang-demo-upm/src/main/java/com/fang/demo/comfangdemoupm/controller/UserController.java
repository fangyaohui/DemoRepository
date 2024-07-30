package com.fang.demo.comfangdemoupm.controller;

import com.fang.demo.comfangdemocommunal.service.UserService;
import com.fang.demo.comfangdemoupm.service.BlogInfoService;
import com.fang.demo.comfangdemoupm.utils.R;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import po.BlogInfoPO;
import po.UserInfoPO;

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

    private BlogInfoService blogInfoService;

    @GetMapping("/getAllUserInfoList")
    public R<String> getAllUserInfoList(){
        List<UserInfoPO> userInfoPOList = userService.getAllUserInfoList();
        if(userInfoPOList.isEmpty()){
            return null;
        }
        return R.ok(userInfoPOList.toString());
    }

    @GetMapping("/saveBlogInfo")
    public R<String> saveBlogInfo(@RequestBody BlogInfoPO blogInfoPO){

        blogInfoService.saveBlogInfo(blogInfoPO);
        return R.ok("asdf");
    }

}