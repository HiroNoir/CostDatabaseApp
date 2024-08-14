package com.example.demo.entity;

import lombok.Data;

/**
* 用途概略区分設定エンティティクラス
*/
@Data
public class PurposeOutline {

    /** 主キー
     * 用途概略区分ID */
    private Integer poId;

    /** 用途概略区分名 */
    private String poTypeName;

}