package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳頭紙エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreakdownCo {

    /** ID */
    private Integer bcoId;

    /**
     * 工事契約
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：工事契約テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcoCcId;
    private ConstructionContract constructionContract;

    /**
     * 内訳頭紙区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳頭紙区分テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcoCoId;
    private CategoryOutline categoryOutline;

    /** 金額 */
    private Long bcoPrice;

    /**
     * 合計金額（検算用）
     * ※データベース保存用エンティティではないが、Mapper.xmlのSQLで
     * 　計算した値を格納して、specify.htmlで表示されるために利用する。
     * 　よって、FormクラスやHelperクラスではこのエンティティは不要とする。
     *  */
    private Long sumBcoPrice;

    /**
     * 割合（対直接工事費率、又は、消費税率）
     * ※データベース保存用エンティティではないが、Mapper.xmlのSQLで
     * 　計算した値を格納して、specify.htmlで表示されるために利用する。
     * 　よって、FormクラスやHelperクラスではこのエンティティは不要とする。
     *  */
    private String ratio;

    /** 作成日時 */
    private LocalDateTime bcoCreatedAt;

    /** 更新日時 */
    private LocalDateTime bcoUpdatedAt;

    /**
     * 最終編集者
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private String bcoLatestEditor;
    private Employee employee;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean bcoDeleteFlg;

}