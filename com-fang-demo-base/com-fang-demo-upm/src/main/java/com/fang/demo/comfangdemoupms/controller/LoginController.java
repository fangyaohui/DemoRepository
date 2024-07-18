package com.fang.demo.comfangdemoupms.controller;

import com.fang.demo.comfangdemoupms.service.LoginService;
import com.fang.demo.comfangdemoupms.utils.R;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vo.LoginVO;

/**
 * @FileName LoginController
 * @Description
 * @Author yaoHui
 * @date 2024-07-18
 **/
@RestController
@RequestMapping("/login")
@AllArgsConstructor
public class LoginController {

    private LoginService loginService;

    @RequestMapping("/signIn")
    public R<String> signIn(@RequestBody LoginVO loginVO){
        return loginService.signIn(loginVO);
    }

}