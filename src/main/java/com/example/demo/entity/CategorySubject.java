package com.example.demo.entity;

import lombok.Data;

/**
* 内訳科目区分設定エンティティクラス
*/
@Data
public class CategorySubject {

    /** 主キー
     * 内訳科目ID */
    private Integer csId;

    /** 内訳頭紙区分 */
    private Integer csCoId;

    /** 内訳種目区分 */
    private Integer csCdId;

    /** 内訳科目区分名 */
    private String csTypeName;

}