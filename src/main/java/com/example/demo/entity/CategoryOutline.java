package com.example.demo.entity;

import lombok.Data;

/**
* 内訳頭紙区分設定エンティティクラス
*/
@Data
public class CategoryOutline {

    /** ID */
    private Integer coId;

    /** 内訳頭紙区分設定 */
    private String coTypeName;

}