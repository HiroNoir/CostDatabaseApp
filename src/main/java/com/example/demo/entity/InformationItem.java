package com.example.demo.entity;

import lombok.Data;

/**
* 用途情報区分設定エンティティクラス
*/
@Data
public class InformationItem {

    /** ID */
    private Integer iiId;

    /** 用途情報区分設定 */
    private String iiItemName;
}