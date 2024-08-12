package com.example.demo.entity;

import lombok.Data;

/**
* 内訳科目区分設定エンティティクラス
*/
@Data
public class CategorySubject {

    /** ID */
    private Integer csId;

    /** 内訳頭紙区分 */
    private Integer csCoId;

    /** 内訳種目区分 */
    private Integer csCdId;

    /** 内訳科目区分設定 */
    private String csTypeName;

}