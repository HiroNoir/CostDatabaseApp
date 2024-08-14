package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.InformationDb;

/**
* 内訳情報リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface InformationDbMapper {

    /** 【合計取得】 */
    InformationDb selectSumById(Integer idbBcdId);

    /** 【特定取得】 */
    List<InformationDb> selectAllById(Integer idbBcdId);

    /** 【一件取得】 */
    InformationDb selectById(Integer idbBcdId, Integer idbIiId);

    /**　【登録実行】 */
    void insert(InformationDb informationDb);

    /**　【更新実行】 */
    void update(InformationDb informationDb);

    /** 【削除実行】 */
    void delete(Integer idbBcdId, Integer idbIiId);

}