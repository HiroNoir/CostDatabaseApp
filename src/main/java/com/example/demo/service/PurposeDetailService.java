package com.example.demo.service;

import java.util.Map;

/**
* 用途詳細区分設定サービスインターフェース
*/
public interface PurposeDetailService {

    /** 【用途詳細区分設定のMapを生成】 */
    Map<String, Integer> getPurposeDetailMap();

}