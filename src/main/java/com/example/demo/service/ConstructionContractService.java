package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 設計契約サービスインターフェース
*/
public interface ConstructionContractService {

    /** 【全件取得】 */
    List<ConstructionContract> findAll();

    /** 【特定取得】 */
    List<ConstructionContract> findAllById(Integer ccDcId);

    /** 【一件取得】 */
    ConstructionContract findById(Integer ccId);

    /** 【登録実行】 */
    ErrorKinds insert(ConstructionContract constructionContract,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(ConstructionContract constructionContract,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer ccId);

    /** 【内訳種別区分設定のMapを生成】 */
    Map<String, Integer> getConstructionContractMap();

}