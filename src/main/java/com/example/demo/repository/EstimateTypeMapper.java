package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.EstimateType;

/**
* 内訳種別リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface EstimateTypeMapper {

    /** 【全件取得】 */
    List<EstimateType> selectAll();

}