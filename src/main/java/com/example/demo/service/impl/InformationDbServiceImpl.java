package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCo;
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

    /** 【idbBcdIdとidbIiIdによる一件取得】 */
    @Override
    public InformationDb findByIdbBcdIdAndIdbIiId(Integer idbBcdId, Integer idbIiId) {
        // TODO Auto-generated method stub
        return mapper.selectByIdbBcdIdAndIdbIiId(idbBcdId, idbIiId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(InformationDb informationDb, LoginUserDetails loginUserDetails) {

        /** 内訳情報区分重複チェック */
        // 対象データを取得
        InformationDb target = mapper.selectByIdbBcdIdAndIdbIiId(informationDb.getIdbBcdId(), informationDb.getIdbIiId());
        // 対象データの有無確認
        if (target != null) {
            // 重複があるためErrorKindsクラスのidbIiId_DUPLICATE_ERRORを返す
            return ErrorKinds.idbIiId_DUPLICATE_ERROR;
        }

        /** 登録に必要な情報をEntityに格納 */
        // 最終編集者の格納
        informationDb.setIdbLatestEditor(loginUserDetails.getUsername());
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(informationDb);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(InformationDb informationDb, LoginUserDetails loginUserDetails) {

        /** 更新に必要な情報をEntityに格納 */
        // 最終編集者の格納
        informationDb.setIdbLatestEditor(loginUserDetails.getUsername());
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // idはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(informationDb);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(Integer idbId, Integer idbBcdId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(idbId, idbBcdId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

}