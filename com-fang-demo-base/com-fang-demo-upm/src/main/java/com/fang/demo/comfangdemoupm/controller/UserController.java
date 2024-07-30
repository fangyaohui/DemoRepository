package com.fang.demo.comfangdemoupm.controller;

import com.fang.demo.comfangdemocommunal.service.UserService;
import com.fang.demo.comfangdemoupm.service.BlogInfoService;
import com.fang.demo.comfangdemoupm.template.OssTemplate;
import com.fang.demo.comfangdemoupm.template.impl.MinIOTemplate;
import com.fang.demo.comfangdemoupm.utils.R;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
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

    private OssTemplate ossTemplate;

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

    @GetMapping("/uploadImg")
    public R<String> uploadImg(@RequestParam("file") MultipartFile file){
        if(ossTemplate.bucketExists("screw-it-development-blog-buck")){
            log.info("screw-it-development-blog-buck存在");
        }
        log.info(String.valueOf(ossTemplate.upLoadFile("blogFoladerName","blogFileName",file)));
        return R.ok("test");
    }

}
