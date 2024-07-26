package com.example.demo.service;

import java.util.Map;

import com.example.demo.entity.CategoryOutline;

/**
* 内訳頭紙区分サービスインターフェース
*/
public interface CategoryOutlineService {

    /** 【一件取得】 */
    CategoryOutline findById(Integer coId);

    /** 【内訳頭紙区分のMapを生成】 */
    Map<String, Integer> getCategoryOutlineMap();

}