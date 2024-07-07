package com.example.demo.service;

import java.util.Map;

/**
* 内訳種別サービスインターフェース
*/
public interface EstimateTypeService {

    /** 【内訳種別のMapを生成】 */
    Map<String, Integer> getEstimateTypeMap();

}