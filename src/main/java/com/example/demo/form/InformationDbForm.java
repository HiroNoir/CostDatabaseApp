package com.example.demo.form;

import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.CategoryDetail;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.entity.InformationItem;

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

    /** 複合主キー1
     * 内訳種目ID
     *  */
    private Integer idbBcdId;

    /** 工事契約（新規登録・更新処理時form.html表示用） */
    private ConstructionContract constructionContract;

    /** 内訳頭紙区分（新規登録・更新処理時form.html表示用） */
    private CategoryOutline categoryOutline;

    /** 内訳頭紙区分（新規登録・更新処理時form.html表示用） */
    private CategoryDetail categoryDetail;

    /**　内訳種目（更新処理時form.html表示用）　*/
    private BreakdownCd breakdownCd;

    /** 複合主キー2
     * 内訳情報区分
     *  */
    @NotNull(message = "内訳情報区分を選択してください。")
    private Integer idbIiId;

    /**　内訳情報区分（更新処理時form.html表示用）　*/
    private InformationItem informationItem;

    /** 文字情報 */
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String idbDataText;

    /** 数量情報 */
    @NotNull(message = "数量を入力してください。内訳情報区分が数量以外の内容であれば「0」を入力して下さい。")
    private Double idbDataDouble;

    /** 金額情報 */
    @NotNull(message = "金額を入力してください。内訳情報区分が金額以外の内容であれば「0」を入力して下さい。")
    private Long idbDataBigint;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}