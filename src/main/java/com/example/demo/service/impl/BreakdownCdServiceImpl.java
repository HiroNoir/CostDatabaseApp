package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.PurposeDetail;
import com.example.demo.repository.BreakdownCdMapper;
import com.example.demo.service.BreakdownCdService;
import com.example.demo.service.PurposeDetailService;

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
    // 他テーブルのデータを取得するため、他テーブルを扱うリポジトリインターフェスをDI
    private final PurposeDetailService purposeDetailService;

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
    public BreakdownCd findById(Integer bcdId, Integer bcdBcoId) {
        return mapper.selectById(bcdId, bcdBcoId);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(BreakdownCd breakdownCd, LoginUserDetails loginUserDetails) {

        /** 用途詳細選択ェック */
        // 選択した用途詳細のbcdPoIdと用途概略のpoIdが整合しているかチェック
        // 対象データの取得
        PurposeDetail targetPurposeDetail = purposeDetailService.findById(breakdownCd.getBcdPdId());
        if (breakdownCd.getBcdPoId() != targetPurposeDetail.getPdPoId()) {
            // 選択ミスがあるためErrorKindsクラスのPURPOSE_MATCHING_ERRORを返す
            return ErrorKinds.PURPOSE_MATCHING_ERROR;
        }

        /** 面積入力チェック */
        // 新営工事の場合は、改修面積と外構面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101010 || breakdownCd.getBcdCdId() == 102010 || breakdownCd.getBcdCdId() == 103010 || breakdownCd.getBcdCdId() == 104010)
                && (breakdownCd.getBcdAreaRenovation() != 0 || breakdownCd.getBcdAreaExterior() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }
        // 改修工事の場合は、建築面積と延床面積と外構面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101020 || breakdownCd.getBcdCdId() == 102020 || breakdownCd.getBcdCdId() == 103020 || breakdownCd.getBcdCdId() == 104020)
                && (breakdownCd.getBcdAreaBuilding() != 0 || breakdownCd.getBcdAreaTotalfloor() != 0 || breakdownCd.getBcdAreaExterior() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }
        // 外構工事の場合は、建築面積と延床面積と改修面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101030 || breakdownCd.getBcdCdId() == 102030 || breakdownCd.getBcdCdId() == 103030 || breakdownCd.getBcdCdId() == 104030)
                && (breakdownCd.getBcdAreaBuilding() != 0 || breakdownCd.getBcdAreaTotalfloor() != 0 || breakdownCd.getBcdAreaRenovation() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }
        // とりこわし工事の場合は、改修面積と外構面積と改修面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101040 || breakdownCd.getBcdCdId() == 102040 || breakdownCd.getBcdCdId() == 103040 || breakdownCd.getBcdCdId() == 104040)
                && (breakdownCd.getBcdAreaRenovation() != 0 || breakdownCd.getBcdAreaExterior() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }

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

        /** 面積入力チェック */
        // 新営工事の場合は、改修面積と外構面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101010 || breakdownCd.getBcdCdId() == 102010 || breakdownCd.getBcdCdId() == 103010 || breakdownCd.getBcdCdId() == 104010)
                && (breakdownCd.getBcdAreaRenovation() != 0 || breakdownCd.getBcdAreaExterior() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }
        // 改修工事の場合は、建築面積と延床面積と外構面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101020 || breakdownCd.getBcdCdId() == 102020 || breakdownCd.getBcdCdId() == 103020 || breakdownCd.getBcdCdId() == 104020)
                && (breakdownCd.getBcdAreaBuilding() != 0 || breakdownCd.getBcdAreaTotalfloor() != 0 || breakdownCd.getBcdAreaExterior() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }
        // 外構工事の場合は、建築面積と延床面積と改修面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101030 || breakdownCd.getBcdCdId() == 102030 || breakdownCd.getBcdCdId() == 103030 || breakdownCd.getBcdCdId() == 104030)
                && (breakdownCd.getBcdAreaBuilding() != 0 || breakdownCd.getBcdAreaTotalfloor() != 0 || breakdownCd.getBcdAreaRenovation() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }
        // とりこわし工事の場合は、改修面積と外構面積と改修面積が「0」になっていることをチェック
        // 対象データの有無確認
        if ((breakdownCd.getBcdCdId() == 101040 || breakdownCd.getBcdCdId() == 102040 || breakdownCd.getBcdCdId() == 103040 || breakdownCd.getBcdCdId() == 104040)
                && (breakdownCd.getBcdAreaRenovation() != 0 || breakdownCd.getBcdAreaExterior() !=0)) {
            // 入力ミスがあるためErrorKindsクラスのAREA_INPUT_MATCHING_ERRORを返す
            return ErrorKinds.AREA_MATCHING_ERROR;
        }

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

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(Integer bcdId, Integer bcdBcoId) {

        /** 削除処理 */
        // 削除実行
        mapper.delete(bcdId, bcdBcoId);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

}