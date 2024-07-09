package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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

    /** 【全件取得】 */
    @Override
    public List<DesignContract> findAll() {
        return mapper.selectAll();
    }

    /** 【1件取得】 */
    @Override
    public DesignContract findById(Integer dcId) {
        return mapper.selectById(dcId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(DesignContract designContract,
            LoginUserDetails loginUserDetails) {

        /** 登録に必要な情報をEntityに格納 */
        // 最終編集者の格納
        designContract.setDcLatestEditor(loginUserDetails.getUsername());
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(designContract);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(DesignContract designContract,
            LoginUserDetails loginUserDetails) {

        /** 更新に必要な情報をEntityに格納 */
        // 最終編集者の格納
        designContract.setDcLatestEditor(loginUserDetails.getUsername());
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // idはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(designContract);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(Integer dcId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(dcId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getDesignContractMap() {

        /** データベースから値を取得 */
        List<DesignContract> designContract = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> designContractMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(DesignContract row : designContract) {
            String contractNumber = row.getContractNumber();
            Integer dcId = row.getDcId();
            designContractMap.put(contractNumber, dcId);
        }
        return designContractMap;

    }

}