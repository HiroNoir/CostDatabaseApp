package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.DesignContract;

/**
* 設計契約サービスインターフェース
*/
public interface DesignContractService {

    /** 【全件検索】 */
    List<DesignContract> findAll();

    /** 【1件検索】 */
    DesignContract findById(int dcId);

    /** 【登録実行】 */
    ErrorKinds insert(DesignContract designContract);

    /** 【更新実行】 */
    ErrorKinds update(DesignContract designContract);

    /** 【削除実行】 */
    ErrorKinds delete(int dcId);

}