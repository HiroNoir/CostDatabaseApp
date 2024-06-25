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

    public static enum Rolea {
        GENERAL("一般"), EDITOR("編集者"), ADMIN("管理者");

        private String name;

        private Rolea(String name) {
            this.name = name;
        }

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