package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳種目エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreakdownCd {

    /** ID */
    private Integer bcdId;

    /**
     * 内訳頭紙
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：工事契約テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcdBcoId;
    // private BreakdownCo breakdownCo;

    /**
     * 内訳種目区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcdCdId;
    // private CategoryDetail categoryDetail;

    /**
     * 用途概略区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcdPoId;
    // private PurposeOutline purposeOutline;

    /**
     * 用途詳細区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcdPdId;
    // private PurposeDetail purposeDetail;

    /** 整列番号 */
    private Integer bcdOrder;

    /** 種目名称 */
    private String bcdTypeName;

    /** 金額 */
    private Long bcdPrice;

    /** 建築面積 */
    private Double bcdAreaBuilding;

    /** 延床面積 */
    private Double bcdAreaTotalfloor;

    /** 改修面積 */
    private Double bcdAreaRenovation;

    /** 外構面積 */
    private Double bcdAreaExterior;

    /** ▲未編集
     * 合計金額（検算用）
     * ※データベース保存用エンティティではないが、Mapper.xmlのSQLで
     * 　計算した値を格納して、specify.htmlで表示されるために利用する。
     * 　よって、FormクラスやHelperクラスではこのエンティティは不要とする。
     *  */
    // private Long sumBcoPrice;

    /** ▲未編集
     * 割合（対直接工事費率、又は、消費税率）
     * ※データベース保存用エンティティではないが、Mapper.xmlのSQLで
     * 　計算した値を格納して、specify.htmlで表示されるために利用する。
     * 　よって、FormクラスやHelperクラスではこのエンティティは不要とする。
     *  */
    // private String ratio;

    /** 作成日時 */
    private LocalDateTime bcdCreatedAt;

    /** 更新日時 */
    private LocalDateTime bcdUpdatedAt;

    /**
     * 最終編集者
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private String bcdLatestEditor;
    // private Employee employee;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean bcdDeleteFlg;

}