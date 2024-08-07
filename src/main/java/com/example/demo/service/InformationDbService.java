package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.InformationDb;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 内訳情報サービスインターフェース
*/
public interface InformationDbService {

    /** 【合計取得】 */
    InformationDb findSumById(Integer idbBcdId);

    /** 【特定取得】 */
    List<InformationDb> findAllById(Integer idbBcdId);

    /** 【一件取得】 */
    InformationDb findById(Integer idbId, Integer idbBcdId);

    /** 【idbBcdIdとidbIiIdによる一件取得】 */
    InformationDb findByIdbBcdIdAndIdbIiId(Integer idbBcdId, Integer idbIiId);

    /** 【登録実行】 */
    ErrorKinds insert(InformationDb informationDb,
            LoginUserDetails loginUserDetails);

    /** 【更新実行】 */
    ErrorKinds update(InformationDb informationDb,
            LoginUserDetails loginUserDetails);

    /** 【削除実行】 */
    ErrorKinds delete(Integer idbId, Integer idbBcdId);

}