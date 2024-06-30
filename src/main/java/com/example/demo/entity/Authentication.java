package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* カスタム認証エンティティクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Authentication {

    /** ユーザー名 */
    private String username;

    /** パスワード */
    private String password;

    /** 権限 */
    private Role authority;

}