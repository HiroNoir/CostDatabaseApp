package com.example.demo.service;

import java.util.Map;

import com.example.demo.entity.CategoryDetail;

/**
* 内訳種目区分設定サービスインターフェース
*/
public interface CategoryDetailService {

    /** 【一件取得】 */
    CategoryDetail findById(Integer cdId);

    /** 【内訳種目区分のMapを生成】 */
    Map<String, Integer> getCategoryDetailMap();

}