package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.InformationItem;

/**
* 用途情報区分リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface InformationItemMapper {

    /** 【全件取得】 */
    List<InformationItem> selectAll();

}