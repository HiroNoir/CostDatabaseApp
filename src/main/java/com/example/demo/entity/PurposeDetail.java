package com.example.demo.entity;

import lombok.Data;

/**
* 用途詳細区分設定エンティティクラス
*/
@Data
public class PurposeDetail {

    /** ID */
    private Integer pdId;

    /** 用途概略区分 */
    private Integer pdPoId;

    /** 用途詳細区分設定 */
    private String pdTypeName;

    /** 包含用途区分設定 */
    private String pdIncludedType;

}