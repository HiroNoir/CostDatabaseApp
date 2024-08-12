package com.example.demo.constraints;

/**
 *  エラー種別定義クラス（列挙型）
 */
public enum ErrorKinds {

    // 社員番号重複チェックエラー
    CODE_DUPLICATE_ERROR,

    // 空白チェックエラー
    BLANK_ERROR,

    // 半角英数字チェックエラー
    HALFSIZE_ERROR,

    // 桁数（8～16桁以外）チェックエラー
    RANGECHECK_ERROR,

    // ログイン中削除チェックエラー
    LOGINCHECK_ERROR,

    // 削除メソッド権限チェックエラー
    DELETEMETHOD_ERROR,

    // 内訳頭紙登録時の内訳頭紙区分重複チェックエラー
    bcoCoId_DUPLICATE_ERROR,

    // 内訳種目登録時の用途マッチングチェックエラー
    PURPOSE_MATCHING_ERROR,

    // 内訳種目登録時の入力面積マッチングチェックエラー
    AREA_MATCHING_ERROR,

    // 内訳情報登録時の内訳情報区分重複チェックエラー
    idbIiId_DUPLICATE_ERROR,

    // 内訳科目登録時の内訳科目区分重複チェックエラー
    bcsCsId_DUPLICATE_ERROR,
    // チェックOK
    CHECK_OK,

    // 正常終了
    SUCCESS;

}