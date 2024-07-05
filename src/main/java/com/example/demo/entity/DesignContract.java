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

    /** 最終編集者 */
    private String dcLatestEditor;

    /** 作成日時 */
    private LocalDateTime dcCreatedAt;

    /** 更新日時 */
    private LocalDateTime dcUpdatedAt;

}