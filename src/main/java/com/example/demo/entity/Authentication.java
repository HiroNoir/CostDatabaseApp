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

    /** ユーザー名（UserDetails属性） */
    private String username;

    /** パスワード（UserDetails属性） */
    private String password;

    /** 権限（カスタム属性） */
    private Role authority;

    /** 名前（カスタム属性） */
    private String firstName;

    /** 名字（カスタム属性） */
    private String lastName;

}