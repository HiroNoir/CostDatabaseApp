package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.CategoryDetail;

/**
* 内訳種目区分リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface CategoryDetailMapper {

    /** 【全件取得】 */
    List<CategoryDetail> selectAll();

}