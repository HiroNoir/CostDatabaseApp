package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.PurposeDetail;

/**
* 用途詳細区分リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface PurposeDetailMapper {

    /** 【全件取得】 */
    List<PurposeDetail> selectAll();

}