package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.CategoryOutline;

/**
* 内訳頭紙リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface CategoryOutlineMapper {

    /** 【全件取得】 */
    List<CategoryOutline> selectAll();

}