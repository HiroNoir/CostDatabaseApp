package com.example.demo.form;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳情報フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class InformationDbForm {

    /** ID */
    private Integer idbId;

    /** 内訳種目 */
    private Integer idbBcdId;

    /** 内訳情報区分 */
    @NotNull(message = "内訳情報区分を選択してください。")
    private Integer idbIiId;

    /** 文字情報 */
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String idbDataText;

    /** 数量情報 */
    private Double idbDataDouble;

    /** 金額情報 */
    private Long idbDataBigint;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}