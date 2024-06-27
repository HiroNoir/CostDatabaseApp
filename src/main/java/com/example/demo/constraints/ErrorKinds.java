package com.example.demo.constraints;

/**
 *  エラー種別定義クラス（列挙型）
 */
public enum ErrorKinds {

    // 重複チェックエラー
    DUPLICATE_ERROR,

    // 空白チェックエラー
    BLANK_ERROR,

    // 半角英数字チェックエラー
    HALFSIZE_ERROR,

    // 桁数（8～16桁以外）チェックエラー
    RANGECHECK_ERROR,

    // ログイン中削除チェックエラー
    LOGINCHECK_ERROR,

    // チェックOK
    CHECK_OK,

    // 正常終了
    SUCCESS;

}