package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCs;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 内訳科目サービスインターフェース
*/
public interface BreakdownCsService {

    /** 【合計取得】 */
    BreakdownCs findSumById(Integer bcsBcdId);

    /** 【特定取得】 */
    List<BreakdownCs> findAllById(Integer bcsBcdId);

    /** 【一件取得】 */
    BreakdownCs findById(Integer bcsBcdId, Integer bcsCsId);

    /** 【登録実行】 */
    ErrorKinds insert(BreakdownCs breakdownCs,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(BreakdownCs breakdownCs,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer bcsBcdId, Integer bcsCsId);

}