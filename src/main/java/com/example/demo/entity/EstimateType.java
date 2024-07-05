package com.example.demo.entity;

import lombok.Data;

/**
* 内訳種別エンティティクラス
*/
@Data
public class EstimateType {

    /** ID */
    private Integer etId;

    /** 内訳種別 */
    private String typeName;

}