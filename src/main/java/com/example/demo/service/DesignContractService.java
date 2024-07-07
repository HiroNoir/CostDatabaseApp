package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.DesignContract;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 設計契約サービスインターフェース
*/
public interface DesignContractService {

    /** 【全件検索】 */
    List<DesignContract> findAll();

    /** 【1件検索】 */
    DesignContract findById(Integer dcId);

    /** 【登録実行】 */
    ErrorKinds insert(DesignContract designContract,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(DesignContract designContract,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer dcId);

    /** 【内訳種別のMapを生成】 */
    Map<String, Integer> getDesignContractMap();

}