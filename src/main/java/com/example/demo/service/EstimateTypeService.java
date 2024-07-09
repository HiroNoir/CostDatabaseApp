package com.example.demo.service;

import java.util.Map;

/**
* 内訳種別区分設定サービスインターフェース
*/
public interface EstimateTypeService {

    /** 【内訳種別区分設定のMapを生成】 */
    Map<String, Integer> getEstimateTypeMap();

}