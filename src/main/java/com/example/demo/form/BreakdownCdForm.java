package com.example.demo.form;

import com.example.demo.entity.BreakdownCo;
import com.example.demo.entity.CategoryDetail;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.entity.PurposeDetail;
import com.example.demo.entity.PurposeOutline;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 内訳種目フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreakdownCdForm {

    /** 主キー
     * 内訳種目ID */
    private Integer bcdId;

    /** 工事契約（新規登録・更新処理時form.html表示用） */
    private ConstructionContract constructionContract;

    /** 内訳頭紙区分（新規登録・更新処理時form.html表示用） */
    private CategoryOutline categoryOutline;

    /**　内訳頭紙　*/
    @NotNull(message = "内訳頭紙を選択してください。")
    private Integer bcdBcoId;

    /**　内訳頭紙（更新処理時form.html表示用）　*/
    private BreakdownCo breakdownCo;

    /** 内訳種目区分 */
    @NotNull(message = "内訳種目区分を選択してください。")
    private Integer bcdCdId;

    /** 内訳種目区分（更新処理時form.html表示用） */
    private CategoryDetail categoryDetail;

    /** 用途概略区分 */
    @NotNull(message = "用途概略区分を選択してください。")
    private Integer bcdPoId;

    /**　用途概略区分（更新処理時form.html表示用） */
    private PurposeOutline purposeOutline;

    /**　用途詳細区分 */
    @NotNull(message = "用途詳細区分を選択してください。")
    private Integer bcdPdId;

    /**　用途詳細区分（更新処理時form.html表示用） */
    private PurposeDetail purposeDetail;

    /** 整列番号 */
    @NotNull(message = "整列番号は必須です。種目の並び順に反映されます。")
    private Integer bcdOrder;

    /** 種目名称 */
    @NotBlank(message = "種目名称は必須です。")
    @Size(max = 30, message = "{max}文字以下で入力してください。")
    private String bcdTypeName;

    /** 金額 */
    @NotNull(message = "金額は必須です。不明の場合は登録しないでください。")
    private Long bcdPrice;

    /** 建築面積 */
    @NotNull(message = "新営工事・とりこわし工事であれば建築面積は必須です。それ以外は「0」を入力して下さい。")
    private Double bcdAreaBuilding;

    /** 延床面積 */
    @NotNull(message = "新営工事・とりこわし工事であれば延床面積は必須です。それ以外は「0」を入力して下さい。")
    private Double bcdAreaTotalfloor;

    /** 改修面積 */
    @NotNull(message = "改修工事であれば改修面積は必須です。それ以外は「0」を入力して下さい。")
    private Double bcdAreaRenovation;

    /** 外構面積 */
    @NotNull(message = "外構工事であれば外構面積は必須です。それ以外は「0」を入力して下さい。")
    private Double bcdAreaExterior;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}