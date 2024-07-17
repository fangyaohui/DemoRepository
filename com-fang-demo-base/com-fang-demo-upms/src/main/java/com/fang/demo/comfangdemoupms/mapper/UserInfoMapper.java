package com.fang.demo.comfangdemoupms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fang.demo.comfangdemoupms.entity.po.UserInfoPO;
import org.apache.ibatis.annotations.Mapper;

/**
 * @FileName UserInfoMapper
 * @Description
 * @Author yaoHui
 * @date 2024-07-17
 **/
@Mapper
public interface UserInfoMapper extends BaseMapper<UserInfoPO> {
}