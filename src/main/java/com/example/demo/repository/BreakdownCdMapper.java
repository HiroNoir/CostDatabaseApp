package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.BreakdownCd;

/**
* 内訳種目リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface BreakdownCdMapper {

    /** 【金額取得】 ▲未編集*/
    // BreakdownCo priceSelectById(Integer bcoCcId, Integer bcoCoId);

    /** 【合計取得】 */
    BreakdownCd selectSumById(Integer bcdBcoId);

    /** 【特定取得】 */
    List<BreakdownCd> selectAllById(Integer bcdBcoId);

    /** 【一件取得】 */
    BreakdownCd selectById(Integer bcdBcoId, String bcdTypeName);

    /**　【登録実行】 */
    void insert(BreakdownCd breakdownCd);

    /**　【更新実行】 */
    void update(BreakdownCd breakdownCd);

    /** 【削除実行】 */
    void delete(Integer bcdBcoId, String bcdTypeName);

}