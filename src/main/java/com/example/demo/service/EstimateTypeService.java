package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.EstimateType;

/**
* 内訳種別サービスインターフェース
*/
public interface EstimateTypeService {

    /** 【全件検索】 */
    List<EstimateType> findAll();

}