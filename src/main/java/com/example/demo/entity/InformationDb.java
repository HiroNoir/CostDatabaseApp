package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳情報エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class InformationDb {

    /** ID */
    private Integer idbId;

    /**
     * 工事契約
     * 工事契約テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private ConstructionContract constructionContract;

    /**
     * 内訳頭紙区分
     * 内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private CategoryOutline categoryOutline;

    /**
     * 内訳種目区分
     * 内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private CategoryDetail categoryDetail;

    /**
     * 内訳頭紙
     * 工事契約テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private BreakdownCo breakdownCo;

    /**
     * 内訳種目
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：工事契約テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer idbBcdId;
    private BreakdownCd breakdownCd;

    /**
     * 内訳情報区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer idbIiId;
    private InformationItem informationItem;

    /** 文字情報 */
    private String idbDataText;

    /** 数量情報 */
    private Double idbDataDouble;

    /** 金額情報 */
    private Long idbDataBigint;

    /** 作成日時 */
    private LocalDateTime idbCreatedAt;

    /** 更新日時 */
    private LocalDateTime idbUpdatedAt;

    /**
     * 最終編集者
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private String idbLatestEditor;
    private Employee employee;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean idbDeleteFlg;

}