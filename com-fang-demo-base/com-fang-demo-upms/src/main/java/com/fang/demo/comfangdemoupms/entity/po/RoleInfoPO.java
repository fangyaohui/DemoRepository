package com.fang.demo.comfangdemoupms.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @FileName RoleInfoPO
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@Data
@TableName(value = "role_info")
public class RoleInfoPO {

    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    private String roleName;
}