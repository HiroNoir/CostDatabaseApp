package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.InformationDb;
import com.example.demo.repository.InformationDbMapper;
import com.example.demo.service.InformationDbService;

import lombok.RequiredArgsConstructor;

/**
* 内訳情報サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class InformationDbServiceImpl implements InformationDbService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final InformationDbMapper mapper;

    /** 【合計取得】 */
    @Override
    public InformationDb findSumById(Integer idbBcdId) {
        return mapper.selectSumById(idbBcdId);
    }

    /** 【特定取得】 */
    @Override
    public List<InformationDb> findAllById(Integer idbBcdId) {
        return mapper.selectAllById(idbBcdId);
    }

    /** 【一件取得】 */
    @Override
    public InformationDb findById(Integer idbId, Integer idbBcdId) {
        return mapper.selectById(idbId, idbBcdId);
    }

    /** 【登録実行】 ▲未実装 */
    @Override
    public ErrorKinds insert(InformationDb informationDb, LoginUserDetails loginUserDetails) {
        // TODO Auto-generated method stub
        return null;
    }

    /** 【更新実行】 ▲未実装 */
    @Override
    public ErrorKinds update(InformationDb informationDb, LoginUserDetails loginUserDetails) {
        // TODO Auto-generated method stub
        return null;
    }

    /** 【削除実行】 ▲未実装 */
    @Override
    public ErrorKinds delete(Integer idbId, Integer idbBcdId) {
        // TODO Auto-generated method stub
        return null;
    }

}