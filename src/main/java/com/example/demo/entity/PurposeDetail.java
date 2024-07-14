package com.example.demo.entity;

import lombok.Data;

/**
* 用途詳細エンティティクラス
*/
@Data
public class PurposeDetail {

    /** ID */
    private Integer poId;

    /** 用途詳細区分設定 */
    private String typeName;

    /** 包含用途区分設定 */
    private String includedType;

}