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

    /** 列挙型権限の定義、及び、文字列取得メソッドの設定 */
    public static enum Rolea {

        /** 列挙型権限の定義 */
        // 権限と文字列の配列を作成
        GENERAL("一般"), EDITOR("編集者"), ADMIN("管理者");

        // 列挙型権限の文字列を定義
        private String name;

        //　列挙型権限の文字列を格納
        private Rolea(String name) {
            this.name = name;
        }

        /** 文字列取得メソッドの設定 */
        public String getValue() {
            return this.name;
        }
    }

    /** 社員番号 */
    private String code;

    /** 名前 */
    private String firstName;

    /** 名字 */
    private String lastName;

    /** パスワード */
    private String password;

    /** 権限 */
    private Rolea rolea;

    /** 作成日時 */
    private LocalDateTime createdAt;

    /** 更新日時 */
    private LocalDateTime updatedAt;

}