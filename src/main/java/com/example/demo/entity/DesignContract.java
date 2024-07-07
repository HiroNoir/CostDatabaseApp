package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 設計契約エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DesignContract {

    /** ID */
    private Integer dcId;

    /** 業務番号 */
    private String contractNumber;

    /** 業務名称 */
    private String contractName;

    /** 発注者名 */
    private String customerName;

    /** 作成日時 */
    private LocalDateTime dcCreatedAt;

    /** 更新日時 */
    private LocalDateTime dcUpdatedAt;

    /**
     * 最終編集者
     * 上段：データベース保存用エンティティ（SQLのINSERT文・UPDATE文で利用）
     * 下段：従業員テーブル連携用エンティティ（SQLのSELECT文で利用）
     *  */
    private String dcLatestEditor;
    private Employee employee;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean dcDeleteFlg;

}