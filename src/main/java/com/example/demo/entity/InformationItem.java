package com.example.demo.entity;

import lombok.Data;

/**
* 用途情報区分設定エンティティクラス
*/
@Data
public class InformationItem {

    /** 主キー
     * 用途情報区分ID */
    private Integer iiId;

    /** 用途情報区分名 */
    private String iiItemName;
}