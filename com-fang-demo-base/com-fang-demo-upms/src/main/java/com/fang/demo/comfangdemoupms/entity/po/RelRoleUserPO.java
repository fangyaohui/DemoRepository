package com.fang.demo.comfangdemoupms.entity.po;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @FileName RelRoleUserPO
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@Data
@TableName(value = "rel_role_user")
public class RelRoleUserPO {

    private Long roleId;

    private Long userId;
}