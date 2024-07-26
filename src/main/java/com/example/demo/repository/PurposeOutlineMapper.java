package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.PurposeOutline;

/**
* 用途概略区分リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface PurposeOutlineMapper {

    /** 【全件取得】 */
    List<PurposeOutline> selectAll();

}