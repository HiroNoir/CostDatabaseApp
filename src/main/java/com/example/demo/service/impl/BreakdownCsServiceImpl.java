package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCs;
import com.example.demo.repository.BreakdownCsMapper;
import com.example.demo.service.BreakdownCsService;

import lombok.RequiredArgsConstructor;

/**
* 内訳科目サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class BreakdownCsServiceImpl implements BreakdownCsService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final BreakdownCsMapper mapper;

    /** 【合計取得】 */
    @Override
    public BreakdownCs findSumById(Integer bcsBcdId) {
        return mapper.selectSumById(bcsBcdId);
    }

    /** 【特定取得】 */
    @Override
    public List<BreakdownCs> findAllById(Integer bcsBcdId) {
        return mapper.selectAllById(bcsBcdId);
    }

    /** 【一件取得】 */
    @Override
    public BreakdownCs findById(Integer bcsBcdId, Integer bcsCsId) {
        return mapper.selectById(bcsBcdId, bcsCsId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(BreakdownCs breakdownCs, LoginUserDetails loginUserDetails) {

        /** 登録に必要な情報をEntityに格納 */
        // 最終編集者の格納
        breakdownCs.setBcsLatestEditor(loginUserDetails.getUsername());
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(breakdownCs);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(BreakdownCs breakdownCs, LoginUserDetails loginUserDetails) {

        /** 更新に必要な情報をEntityに格納 */
        // 最終編集者の格納
        breakdownCs.setBcsLatestEditor(loginUserDetails.getUsername());
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // idはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(breakdownCs);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(Integer bcsBcdId, Integer bcsCsId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(bcsBcdId, bcsCsId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

}