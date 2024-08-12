package com.example.demo.entity;

/**
* カスタム認証権限クラス（列挙型）
* */
public enum Role {

    /** 列挙型権限の定義 */
    // 権限と文字列の配列を作成
    GENERAL("一般"), EDITOR("編集者"), ADMIN("管理者");

    // 列挙型権限の文字列を定義
    private String name;

    //　列挙型権限の文字列を格納
    private Role(String name) {
        this.name = name;
    }

    /** 文字列取得メソッドの設定 */
    public String getValue() {
        return this.name;

    }

}