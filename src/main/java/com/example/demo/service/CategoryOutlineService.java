package com.example.demo.service;

import java.util.Map;

/**
* 内訳頭紙サービスインターフェース
*/
public interface CategoryOutlineService {

    /** 【内訳頭紙のMapを生成】 */
    Map<String, Integer> getCategoryOutlineMap();

}