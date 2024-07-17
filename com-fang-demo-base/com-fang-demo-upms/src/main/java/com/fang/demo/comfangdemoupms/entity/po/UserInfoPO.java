package com.fang.demo.comfangdemoupms.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @FileName UserInfoPO
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@Data
@TableName(value = "user_info")
public class UserInfoPO {

    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    private String userName;

}