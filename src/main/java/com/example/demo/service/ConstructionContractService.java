package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 設計契約サービスインターフェース
*/
public interface ConstructionContractService {

    /** 【全件検索】 */
    List<ConstructionContract> findAll();

    /** 【1件検索】 */
    ConstructionContract findById(Integer dcId);

    /** 【登録実行】 */
    ErrorKinds insert(ConstructionContract constructionContract,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(ConstructionContract constructionContract,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer ccId);

}