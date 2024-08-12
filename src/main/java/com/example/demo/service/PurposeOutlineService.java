package com.example.demo.service;

import java.util.Map;

/**
* 用途概略区分設定サービスインターフェース
*/
public interface PurposeOutlineService {

    /** 【用途概略区分設定のMapを生成】 */
    Map<String, Integer> getPurposeOutlineMap();

}