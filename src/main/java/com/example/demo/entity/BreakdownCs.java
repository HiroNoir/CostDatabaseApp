package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳科目エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreakdownCs {

    /** ID */
    private Integer bcsBcdId;

    /**
     * 内訳科目区分
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：内訳科目区分設定テーブルとの連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private Integer bcsCsId;
    private CategorySubject categorySubject;

    /** 文字情報 */
    private String bcsDataText;

    /** 金額情報 */
    private Long bcsDataBigint;

    /**
     * 合計金額（検算用）
     * ※データベース保存用エンティティではないが、Mapper.xmlのSQLで
     * 　計算した値を格納して、specify.htmlで表示されるために利用する。
     * 　よって、FormクラスやHelperクラスではこのエンティティは不要とする。
     *  */
    private Long sumBcsPrice;

    /** 作成日時 */
    private LocalDateTime bcsCreatedAt;

    /** 更新日時 */
    private LocalDateTime bcsUpdatedAt;

    /**
     * 最終編集者
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private String bcsLatestEditor;
    private Employee employee;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean bcsDeleteFlg;

}