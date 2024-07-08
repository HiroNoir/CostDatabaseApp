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

    /**
     * 設計契約
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer ccDcId;
    private DesignContract designContract;

    /**
     * 内訳種別区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳種別区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer ccEtId;
    private EstimateType estimateType;

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
    private Double siteArea;

    /** 別途工事 */
    private String separeteConstruction;

    /** 予定価格 */
    private Long plannedPrice;

    /** 落札価格 */
    private Long contractPrice;

    /**
     * 落札率
     * ※データベース保存用エンティティではないが、Mapper.xmlのSQLで
     * 　計算した値を格納して、detail.htmlで表示されるために利用する。
     * 　よって、FormクラスやHelperクラスではこのエンティティは不要とする。
     *  */
    private String turnoverRate;

    /** 施工業者 */
    private String contractorName;

    /** 経緯等コメント */
    private String remarksSection;

    /** 発注図（抜粋）保存先 */
    private String blueprintAddress;

    /** 作成日時 */
    private LocalDateTime ccCreatedAt;

    /** 更新日時 */
    private LocalDateTime ccUpdatedAt;

    /**
     * 最終編集者
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private String ccLatestEditor;
    private Employee employee;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean ccDeleteFlg;

}