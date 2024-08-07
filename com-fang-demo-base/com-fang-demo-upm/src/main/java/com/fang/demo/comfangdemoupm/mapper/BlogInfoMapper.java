package com.fang.demo.comfangdemoupm.mapper;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;
import po.BlogInfoPO;

/**
 * @FileName BlogInfoMapper
 * @Description
 * @Author yaoHui
 * @date 2024-07-30
 **/
@Repository
public interface BlogInfoMapper extends ElasticsearchRepository<BlogInfoPO,String> {
}