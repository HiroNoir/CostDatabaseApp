package com.example.demo.entity;

import lombok.Data;

/**
* 内訳頭紙エンティティクラス
*/
@Data
public class CategoryOutline {

    /** ID */
    private Integer coId;

    /** 内訳種別区分設定 */
    private String coTypeName;

}