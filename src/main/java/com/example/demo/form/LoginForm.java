package com.example.demo.form;

import lombok.Data;

/**
* カスタム認証フォームクラス
*/
@Data
public class LoginForm {

    /** ユーザー名 */
    private String usernameInput;

    /** パスワード */
    private String passwordInput;

}