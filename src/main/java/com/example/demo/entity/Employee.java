package com.example.demo.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 従業員エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {

    /** 主キー
     * 社員番号
     *  */
    private String code;

    /** 名前 */
    private String firstName;

    /** 名字 */
    private String lastName;

    /** パスワード */
    private String password;

    /** 権限 */
    private Role role;

    /** 作成日時 */
    private LocalDateTime createdAt;

    /** 更新日時 */
    private LocalDateTime updatedAt;

    /**
     * 削除フラグ
     * データベース保存用エンティティのため、Formクラス及びHelperクラスへの追記不要
     *  */
    private boolean deleteFlg;

}