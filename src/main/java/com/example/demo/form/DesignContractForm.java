package com.example.demo.form;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 設計契約フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DesignContractForm {

    /** ID */
    private Integer dcId;

    /** 業務番号 */
    @NotBlank(message = "業務番号は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String contractNumber;

    /** 業務名称 */
    @NotBlank(message = "業務番号は必須です。")
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String contractName;

    /** 発注者名 */
    @NotBlank(message = "業務番号は必須です。")
    @Size(max = 30, message = "{max}文字以下で入力してください。")
    private String customerName;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}