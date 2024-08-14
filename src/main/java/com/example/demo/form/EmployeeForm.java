package com.example.demo.form;

import com.example.demo.entity.Role;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 従業員フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeForm {

    /** 主キー
     * 社員番号
     *  */
    @NotBlank(message = "社員番号は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String code;

    /** 名前 */
    @NotBlank(message = "名前は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String firstName;

    /** 名字 */
    @NotBlank(message = "名字は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String lastName;

    /** パスワード */
    // 更新時は空白でもOKとしているので、空白チェックはService側で行う
    private String password;

    /** 権限 */
    @NotNull(message = "権限を選択してください。")
    private Role role;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}