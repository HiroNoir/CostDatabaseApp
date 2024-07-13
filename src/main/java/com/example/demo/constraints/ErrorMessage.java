package com.example.demo.constraints;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * エラーメッセージ定義クラス（チェックOK、正常終了以外）
 */
public class ErrorMessage {

    /** エラーメッセージ情報マップ */
    private final static Map<ErrorKinds, List<String>> errorMessageMap = new HashMap<ErrorKinds, List<String>>() {
        private static final long serialVersionUID = 1L;

        {
            // 社員番号重複チェック用エラーメッセージ
            put(ErrorKinds.CODE_DUPLICATE_ERROR, new ArrayList<String>(Arrays.asList("codeError", "既に登録されている社員番号です")));
            // パスワード空白チェック用エラーメッセージ
            put(ErrorKinds.BLANK_ERROR, new ArrayList<String>(Arrays.asList("passwordError", "値を入力してください")));
            // パスワードの半角英数字チェック用エラーメッセージ
            put(ErrorKinds.HALFSIZE_ERROR,
                    new ArrayList<String>(Arrays.asList("passwordError", "パスワードは半角英数字のみで入力してください")));
            // パスワードの8文字～16文字チェック用エラーメッセージ
            put(ErrorKinds.RANGECHECK_ERROR,
                    new ArrayList<String>(Arrays.asList("passwordError", "8文字以上16文字以下で入力してください")));
            // ログイン中の従業員削除チェック用エラーメッセージ
            put(ErrorKinds.LOGINCHECK_ERROR,
                    new ArrayList<String>(Arrays.asList("deleteError", "ログイン中の従業員を削除することは出来ません")));
            // 削除メソッド権限チェックー用エラーメッセージ
            put(ErrorKinds.DELETEMETHOD_ERROR,
                    new ArrayList<String>(Arrays.asList("deleteError", "削除する権限がありませんので削除することは出来ません")));
            // 内訳頭紙登録時の内訳頭紙区分重複チェック用エラーメッセージ
            put(ErrorKinds.bcoCoId_DUPLICATE_ERROR, new ArrayList<String>(Arrays.asList("bcoCoIdError", "既に登録されているデータです")));
        }
    };

    /** エラーメッセージマップにあるエラーかどうかのチェック */
    public static boolean contains(ErrorKinds errorKinds) {
        if (errorMessageMap.containsKey(errorKinds)) {
            return true;
        } else {
            return false;
        }
    }

    /** エラーメッセージの名称を取得 */
    public static String getErrorName(ErrorKinds errorKinds) {
        return errorMessageMap.get(errorKinds).get(0);
    }

    /** エラーメッセージの値を取得 */
    public static String getErrorValue(ErrorKinds errorKinds) {
        return errorMessageMap.get(errorKinds).get(1);
    }

}