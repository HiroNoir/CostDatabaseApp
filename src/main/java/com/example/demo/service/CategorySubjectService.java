package com.example.demo.service;

import java.util.Map;

/**
* 内訳科目区分設定サービスインターフェース
*/
public interface CategorySubjectService {

    /** 【内訳情報区分設定のMapを生成】 */
    Map<String, Integer> getCategorySubjectMap();

}