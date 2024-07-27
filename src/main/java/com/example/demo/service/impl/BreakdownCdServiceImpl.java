package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.repository.BreakdownCdMapper;
import com.example.demo.service.BreakdownCdService;

import lombok.RequiredArgsConstructor;

/**
* 内訳種目サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class BreakdownCdServiceImpl implements BreakdownCdService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final BreakdownCdMapper mapper;

    /** 【合計取得】 */
    @Override
    public BreakdownCd findSumById(Integer bcdBcoId) {
        return mapper.selectSumById(bcdBcoId);
    }

    /** 【特定取得】 */
    @Override
    public List<BreakdownCd> findAllById(Integer bcdBcoId) {
        return mapper.selectAllById(bcdBcoId);
    }

    /** 【一件取得】 */
    @Override
    public BreakdownCd findById(Integer bcdBcoId, String bcdTypeName) {
        return mapper.selectById(bcdBcoId, bcdTypeName);
    }

    /** 【BcdIdによる一件取得】 */
    @Override
    public BreakdownCd findByBcdId(Integer bcdId) {
        return mapper.selectByBcdId(bcdId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(BreakdownCd breakdownCd, LoginUserDetails loginUserDetails) {

        /** 登録に必要な情報をEntityに格納 */
        // 最終編集者の格納
        breakdownCd.setBcdLatestEditor(loginUserDetails.getUsername());
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(breakdownCd);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(BreakdownCd breakdownCd, LoginUserDetails loginUserDetails) {

        /** 更新に必要な情報をEntityに格納 */
        // 最終編集者の格納
        breakdownCd.setBcdLatestEditor(loginUserDetails.getUsername());
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // idはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(breakdownCd);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 ▲実装 */
    @Override
    public ErrorKinds delete(Integer bcdBcoId, String bcdTypeName) {
        // TODO Auto-generated method stub
        return null;
    }

}