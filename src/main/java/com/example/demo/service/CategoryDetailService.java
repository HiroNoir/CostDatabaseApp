package com.example.demo.service;

import java.util.Map;

/**
* 内訳種目サービスインターフェース
*/
public interface CategoryDetailService {

    /** 【内訳頭紙のMapを生成】 */
    Map<String, Integer> getCategoryDetailMap();

}