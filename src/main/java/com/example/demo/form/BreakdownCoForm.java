package com.example.demo.form;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳頭紙フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreakdownCoForm {

    /** ID */
    private Integer bcoId;

    /** 工事契約 */
    private Integer bcoCcId;

    /** 内訳頭紙区分 */
    @NotNull(message = "内訳頭紙区分を選択してください。")
    private Integer bcoCoId;

    /** 金額 */
    @NotNull(message = "金額は必須です。不明の場合は登録しないでください。")
    private Long bcoPrice;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}