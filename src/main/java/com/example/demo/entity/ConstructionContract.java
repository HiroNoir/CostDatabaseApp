package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 工事契約エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ConstructionContract {

    /** ID */
    private Integer ccId;

    /** 最終編集者 */
    private String ccLatestEditor;

    /** 作成日時 */
    private LocalDateTime ccCreatedAt;

    /** 更新日時 */
    private LocalDateTime ccUpdatedAt;

    /** 設計契約ID */
    private Integer ccDcId;

    /** 内訳種別ID */
    private Integer ccEtId;

    /** 積算時期（年） */
    private String estimateYear;

    /** 積算時期（月） */
    private String estimateMonth;

    /** 発注工期 */
    private String constructionPeriod;

    /** 工事名称 */
    private String projectName;

    /** 工事場所 */
    private String siteAddress;

    /** 敷地面積 */
    private double siteArea;

    /** 別途工事 */
    private String separeteConstruction;

    /** 予定価格 */
    private long plannedPrice;

    /** 落札価格 */
    private long contractPrice;

    /** 施工業者 */
    private String contractorName;

    /** 経緯等コメント */
    private String remarksSection;

    /** 発注図（抜粋）保存先 */
    private String blueprintAddress;

}