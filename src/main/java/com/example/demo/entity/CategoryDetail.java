package com.example.demo.entity;

import lombok.Data;

/**
* 内訳種目エンティティクラス
*/
@Data
public class CategoryDetail {

    /** ID */
    private Integer cdId;

    /** 内訳種目区分設定 */
    private String typeName;

}