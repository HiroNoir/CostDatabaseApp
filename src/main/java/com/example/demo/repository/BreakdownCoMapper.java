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

    /** 【一件取得】 */
    BreakdownCo selectById(Integer bcoId);

    /**　【登録実行】 */
    void insert(BreakdownCo breakdownCo);

    /**　【更新実行】 */
    void update(BreakdownCo breakdownCo);

    /** 【削除実行】 */
    void delete(Integer bcoId);

}