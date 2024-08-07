package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.CategorySubject;

/**
* 内訳科目区分設定リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface CategorySubjectMapper {

    /** 【全件取得】 */
    List<CategorySubject> selectAll();

}