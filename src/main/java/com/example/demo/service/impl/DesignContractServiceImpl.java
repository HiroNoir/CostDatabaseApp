package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.DesignContract;
import com.example.demo.repository.DesignContractMapper;
import com.example.demo.service.DesignContractService;

import lombok.RequiredArgsConstructor;

/**
* 設計契約サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class DesignContractServiceImpl implements DesignContractService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final DesignContractMapper mapper;

    /** 【全件検索】 */
    @Override
    public List<DesignContract> findAll() {
        return mapper.selectAll();
    }

    /** 【1件検索】 */
    @Override
    public DesignContract findById(int dcId) {
        return mapper.selectById(dcId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(DesignContract designContract) {

        /** 登録処理 */
        // 登録実行
        mapper.insert(designContract);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(DesignContract designContract) {

        /** 更新処理 */
        // 更新実行
        mapper.update(designContract);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(int dcId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(dcId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

}
