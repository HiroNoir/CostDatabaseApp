package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.PurposeDetail;

/**
* 用途詳細区分設定リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface PurposeDetailMapper {

    /** 【全件取得】 */
    List<PurposeDetail> selectAll();

    /** 【一件取得】 */
    PurposeDetail selectById(Integer pdId);
}