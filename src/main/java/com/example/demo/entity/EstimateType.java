package com.example.demo.entity;

import lombok.Data;

/**
* 内訳種別区分設定エンティティクラス
*/
@Data
public class EstimateType {

    /** ID */
    private Integer etId;

    /** 内訳種別区分設定 */
    private String etTypeName;

}