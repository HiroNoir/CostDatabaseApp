package com.example.demo.form;

import com.example.demo.entity.CategorySubject;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳科目フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreakdownCsForm {

    /** ID */
    private Integer bcsBcdId;

    /** 内訳科目区分　*/
    @NotNull(message = "内訳科目区分を選択してください。")
    private Integer bcsCsId;

    /**　内訳科目区分（更新処理時form.html表示用）　*/
    private CategorySubject categorySubject;

    /** 文字情報 */
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String bcsDataText;

    /** 金額情報 */
    @NotNull(message = "金額を入力してください。")
    private Long bcsDataBigint;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}