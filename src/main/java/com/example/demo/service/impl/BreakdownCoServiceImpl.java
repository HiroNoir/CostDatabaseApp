package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.repository.BreakdownCoMapper;
import com.example.demo.service.BreakdownCoService;

import lombok.RequiredArgsConstructor;

/**
* 内訳頭紙サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class BreakdownCoServiceImpl implements BreakdownCoService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final BreakdownCoMapper mapper;

    /** 【金額取得】 */
    @Override
    public BreakdownCo priceFindById(Integer bcoCcId, Integer bcoCoId) {
        return mapper.priceSelectById(bcoCcId, bcoCoId);
    }

    /** 【特定取得】 */
    @Override
    public List<BreakdownCo> findAllById(Integer bcoCcId,
            Long directConstructionPrice, Long totalConstructionPrice) {
        return mapper.selectAllById(bcoCcId,
                directConstructionPrice, totalConstructionPrice);
    }

    /** 【一件取得】 */
    @Override
    public BreakdownCo findById(Integer bcoId) {
        return mapper.selectById(bcoId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(BreakdownCo breakdownCo, LoginUserDetails loginUserDetails) {

        /** 登録に必要な情報をEntityに格納 */
        // 最終編集者の格納
        breakdownCo.setBcoLatestEditor(loginUserDetails.getUsername());
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(breakdownCo);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(BreakdownCo breakdownCo, LoginUserDetails loginUserDetails) {

        /** 更新に必要な情報をEntityに格納 */
        // 最終編集者の格納
        breakdownCo.setBcoLatestEditor(loginUserDetails.getUsername());
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // idはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(breakdownCo);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(Integer bcoId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(bcoId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

}