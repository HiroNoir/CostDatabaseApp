package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.BreakdownCo;

/**
* 内訳頭紙リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface BreakdownCoMapper {

    /** 【特定取得】 */
    List<BreakdownCo> selectAllById(Integer bcoId);

    /** 【直接工事費取得】 */
    BreakdownCo directConstructionPriceSelectById(Integer bcoCcId);

    /** 【工事価格取得】 */
    BreakdownCo totalConstructionPriceSelectById(Integer bcoCcId);

    /** 【消費税相当額取得】 */
    BreakdownCo taxPriceSelectById(Integer bcoCcId);

    /** 【一件取得】 */
    BreakdownCo selectById(Integer bcoId);

    /**　【登録実行】 */
    void insert(BreakdownCo breakdownCo);

    /**　【更新実行】 */
    void update(BreakdownCo breakdownCo);

    /** 【削除実行】 */
    void delete(Integer bcoId);

}