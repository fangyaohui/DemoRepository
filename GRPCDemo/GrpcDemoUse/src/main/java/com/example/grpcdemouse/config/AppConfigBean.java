package com.example.grpcdemouse.config;

import lombok.Data;

/**
 * @FileName AppConfigBean
 * @Description
 * @Author yaoHui
 * @date 2024-07-08
 **/
@Data
public class AppConfigBean {

    private String name;

    public AppConfigBean(String name){
        this.name = name;
    }
}