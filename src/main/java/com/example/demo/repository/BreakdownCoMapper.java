package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.BreakdownCo;

/**
* 内訳頭紙リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface BreakdownCoMapper {

    /** 【金額取得】 */
    BreakdownCo priceSelectById(Integer bcoCcId, Integer bcoCoId);

    /** 【合計取得】 */
    BreakdownCo selectSumById(Integer bcoCcId, Integer bcoCoId1, Integer bcoCoId2);

    /** 【特定取得】 */
    List<BreakdownCo> selectAllById(Integer bcoCcId,
            Long directConstructionPrice, Long totalConstructionPrice);

    /** 【一件取得】 */
    BreakdownCo selectById(Integer bcoCcId, Integer bcoCoId);

    /** 【BcoIdによる一件取得】 */
    BreakdownCo selectByBcoId(Integer bcoId);

    /**　【登録実行】 */
    void insert(BreakdownCo breakdownCo);

    /**　【更新実行】 */
    void update(BreakdownCo breakdownCo);

    /** 【削除実行】 */
    void delete(Integer bcoCcId, Integer bcoCoId);

}