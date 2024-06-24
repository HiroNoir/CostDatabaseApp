package com.example.demo.form;

import com.example.demo.entity.Employee.Rolea;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeForm {

    /** 社員番号 */
    @NotBlank(message = "社員番号は必須です。")
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
    @NotBlank(message = "パスワードは必須です。")
    private String password;

    /** 権限 */
    private Rolea rolea;

    /** 新規判定 */
    private Boolean isNew;

}