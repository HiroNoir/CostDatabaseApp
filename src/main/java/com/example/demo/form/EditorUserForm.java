package com.example.demo.form;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EditorUserForm {

    /** 社員番号 */
    private String euCode;

    /** 名前 */
    private String name;

    /** パスワード */
    private String password;

    /** 新規判定 */
    private Boolean isNew;

}