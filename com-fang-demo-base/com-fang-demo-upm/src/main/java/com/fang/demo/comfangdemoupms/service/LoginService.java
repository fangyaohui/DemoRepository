package com.fang.demo.comfangdemoupms.service;

import com.fang.demo.comfangdemoupms.utils.R;
import vo.LoginVO;

/**
 * @FileName LoginService
 * @Description
 * @Author yaoHui
 * @date 2024-07-18
 **/
public interface LoginService {

    R<String> signIn(LoginVO loginVO);

}