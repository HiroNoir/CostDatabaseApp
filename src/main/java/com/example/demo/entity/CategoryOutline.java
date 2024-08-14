package com.example.demo.entity;

import lombok.Data;

/**
* 内訳頭紙区分設定エンティティクラス
*/
@Data
public class CategoryOutline {

    /** 主キー
     * 内訳頭紙区分ID */
    private Integer coId;

    /** 内訳頭紙区分名 */
    private String coTypeName;

}