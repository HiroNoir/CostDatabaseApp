package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 内訳頭紙サービスインターフェース
*/
public interface BreakdownCoService {

    /** 【金額取得】 */
    BreakdownCo priceFindById(Integer bcoCcId, Integer bcoCoId);

    /** 【特定取得】 */
    List<BreakdownCo> findAllById(Integer bcoCcId,
            Long directConstructionPrice, Long totalConstructionPrice);

    /** 【一件取得】 */
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