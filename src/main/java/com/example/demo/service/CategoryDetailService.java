package com.example.demo.service;

import java.util.Map;

/**
* 内訳種目区分サービスインターフェース
*/
public interface CategoryDetailService {

    /** 【内訳種目区分のMapを生成】 */
    Map<String, Integer> getCategoryDetailMap();

}