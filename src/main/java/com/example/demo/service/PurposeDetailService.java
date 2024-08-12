package com.example.demo.service;

import java.util.Map;

import com.example.demo.entity.PurposeDetail;

/**
* 用途詳細区分設定サービスインターフェース
*/
public interface PurposeDetailService {

    /** 【用途詳細区分設定のMapを生成】 */
    Map<String, Integer> getPurposeDetailMap();

    /** 【用途詳細選択ェックのための一件取得】 */
    PurposeDetail findById(Integer pdId);

}