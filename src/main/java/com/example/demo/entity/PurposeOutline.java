package com.example.demo.entity;

import lombok.Data;

/**
* 用途概略区分設定エンティティクラス
*/
@Data
public class PurposeOutline {

    /** ID */
    private Integer poId;

    /** 用途概略区分設定 */
    private String poTypeName;

}