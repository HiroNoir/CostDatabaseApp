package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCd;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 内訳種目サービスインターフェース
*/
public interface BreakdownCdService {

    /** 【金額取得】 ▲未編集 */
    // BreakdownCo priceFindById(Integer bcoCcId, Integer bcoCoId);

    /** 【合計取得】 ▲未編集 */
    // BreakdownCo findSumById(Integer bcoCcId, Integer bcoCoId1, Integer bcoCoId2);

    /** 【特定取得】 */
    List<BreakdownCd> findAllById(Integer bcdBcoId);

    /** 【一件取得】 */
    BreakdownCd findById(Integer bcdBcoId, String bcdTypeName);

    /** 【登録実行】 */
    ErrorKinds insert(BreakdownCd breakdownCd,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(BreakdownCd breakdownCd,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer bcdBcoId, String bcdTypeName);

}