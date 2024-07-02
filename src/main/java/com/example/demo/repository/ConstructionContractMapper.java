package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.ConstructionContract;

/**
* 工事契約リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface ConstructionContractMapper {

    /** 【全件取得】 */
    List<ConstructionContract> selectAll();

    /** 【1件取得】 */
    ConstructionContract selectById(Integer ccId);

    /**　【登録実行】 */
    void insert(ConstructionContract constructionContract);

    /**　【更新実行】 */
    void update(ConstructionContract constructionContract);

    /** 【削除実行】 */
    void delete(Integer ccId);

}