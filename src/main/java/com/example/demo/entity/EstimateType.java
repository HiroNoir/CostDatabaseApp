package com.example.demo.entity;

import lombok.Data;

/**
* 内訳種別区分設定エンティティクラス
*/
@Data
public class EstimateType {

    /** 主キー
     * 内訳種別区分ID */
    private Integer etId;

    /** 内訳種別区分名 */
    private String etTypeName;

}