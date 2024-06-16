package com.example.demo.form;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EditorUserForm {

    /** 社員番号 */
    @NotBlank(message = "社員番号は必須です。")
    private String euCode;

    /** 名前 */
    @NotBlank(message = "名前は必須です。")
    private String name;

    /** パスワード */
    @NotBlank(message = "パスワードは必須です。")
    private String password;

    /** 新規判定 */
    private Boolean isNew;

}