package com.fang.demo.comfangdemomaven.controller;

import com.alibaba.nacos.api.config.annotation.NacosValue;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @FileName DemoController
 * @Description
 * @Author yaoHui
 * @date 2024-07-15
 **/
@RefreshScope
@RestController
@RequestMapping("provider")
public class DemoController {

    // 使用原生注解@Value()导入配置
    @Value("${user.id}")
    private String id;

    @Value("${user.id}")
    private String name;

    @Value("${user.id}")
    private String age;

    @GetMapping("getNacosConfig")
    public String providerTest()
    {
        return "我是provider，已成功获取nacos配置中心的数据：(id:" + id + ",name:" + name + ",age:" + age +")";
    }

}