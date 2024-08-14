package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.repository.ConstructionContractMapper;
import com.example.demo.service.ConstructionContractService;

import lombok.RequiredArgsConstructor;

/**
* 設計契約サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class ConstructionContractServiceImpl implements ConstructionContractService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final ConstructionContractMapper mapper;

    /** 【全件取得】 */
    @Override
    public List<ConstructionContract> findAll() {
        return mapper.selectAll();
    }

    /** 【特定取得】 */
    @Override
    public List<ConstructionContract> findAllById(Integer ccDcId) {
        return mapper.selectAllById(ccDcId);
    }

    /** 【一件取得】 */
    @Override
    public ConstructionContract findById(Integer ccId) {
        return mapper.selectById(ccId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(ConstructionContract constructionContract,
            LoginUserDetails loginUserDetails) {

        /** 登録に必要な情報をEntityに格納 */
        // 最終編集者の格納
        constructionContract.setCcLatestEditor(loginUserDetails.getUsername());
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(constructionContract);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(ConstructionContract constructionContract,
            LoginUserDetails loginUserDetails) {

        /** 更新に必要な情報をEntityに格納 */
        // 最終編集者の格納
        constructionContract.setCcLatestEditor(loginUserDetails.getUsername());
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // idはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(constructionContract);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(Integer ccId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(ccId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

}