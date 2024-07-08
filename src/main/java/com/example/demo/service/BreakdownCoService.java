package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 内訳頭紙サービスインターフェース
*/
public interface BreakdownCoService {

    /** 【全件検索】 */
    List<BreakdownCo> findAll();

    /** 【1件検索】 */
    BreakdownCo findById(Integer bcoId);

    /** 【登録実行】 */
    ErrorKinds insert(BreakdownCo breakdownCo,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(BreakdownCo breakdownCo,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer bcoId);

}