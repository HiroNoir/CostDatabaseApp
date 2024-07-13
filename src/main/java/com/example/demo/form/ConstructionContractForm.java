package com.example.demo.form;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* 工事契約フォームクラス
*/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ConstructionContractForm {

    /** ID */
    private Integer ccId;

    /** 設計契約 */
    @NotNull(message = "設計契約を選択してください。")
    private Integer ccDcId;

    /** 内訳種別区分 */
    @NotNull(message = "内訳種別区分を選択してください。")
    private Integer ccEtId;

    /** 積算時期（年） */
    @NotBlank(message = "積算時期（年）は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String estimateYear;

    /** 積算時期（月） */
    @NotBlank(message = "積算時期（月）は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String estimateMonth;

    /** 発注工期 */
    @NotBlank(message = "発注工期は必須です。")
    @Size(max = 10, message = "{max}文字以下で入力してください。")
    private String constructionPeriod;

    /** 工事名称 */
    @NotBlank(message = "工事名称は必須です。")
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String projectName;

    /** 工事場所 */
    @NotBlank(message = "工事場所は必須です。")
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String siteAddress;

    /** 敷地面積 */
    @NotNull(message = "敷地面積は必須です。")
    private Double siteArea;

    /** 別途工事 */
    @NotBlank(message = "別途工事は必須です。特になければ「特に無し」などと記録に残してください。")
    @Size(max = 100, message = "{max}文字以下で入力してください。")
    private String separeteConstruction;

    /** 予定価格 */
    @NotNull(message = "予定価格は必須です。不明の場合は「0」を入力し、経緯等コメント欄にその理由を入力してください。")
    private Long plannedPrice;

    /** 落札価格 */
    @NotNull(message = "落札価格は必須です。不明の場合は「0」を入力し、経緯等コメント欄にその理由を入力してください。")
    private Long contractPrice;

    /** 施工業者 */
    @NotBlank(message = "施工業者は必須です。不明の場合は「不明」を入力し、経緯等コメント欄にその理由を入力してください。")
    @Size(max = 30, message = "{max}文字以下で入力してください。")
    private String contractorName;

    /** 経緯等コメント */
    @NotBlank(message = "経緯等コメントは必須です。特になければ「特に無し」などと記録に残してください。")
    private String remarksSection;

    /** 発注図（抜粋）保存先 */
    @NotBlank(message = "発注図（抜粋）保存先は必須です。未定の場合は「決まり次第更新」など記録を残してください。")
    private String blueprintAddress;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}