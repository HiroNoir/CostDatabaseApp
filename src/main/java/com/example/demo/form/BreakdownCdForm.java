package com.example.demo.form;

import java.time.LocalDateTime;

import com.example.demo.entity.BreakdownCo;
import com.example.demo.entity.CategoryDetail;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.entity.Employee;
import com.example.demo.entity.PurposeDetail;
import com.example.demo.entity.PurposeOutline;

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

    /** ID */
    private Integer bcdId;

    /** 工事契約（新規登録・更新処理時form.html表示用） */
    private ConstructionContract constructionContract;

    /** 内訳頭紙区分（新規登録・更新処理時form.html表示用） */
    private CategoryOutline categoryOutline;

    /**内訳頭紙*/
    private Integer bcdBcoId;

    /**内訳頭紙（更新処理時form.html表示用）*/
    private BreakdownCo breakdownCo;

    /** 内訳種目区分 */
    private Integer bcdCdId;

    /** 内訳種目区分（更新処理時form.html表示用） */
    private CategoryDetail categoryDetail;

    /**用途概略区分（form.html表示用） */
    private Integer bcdPoId;

    /**用途概略区分（更新処理時form.html表示用） */
    private PurposeOutline purposeOutline;

    /**用途詳細区分 */
    private Integer bcdPdId;

    /**用途詳細区分（更新処理時form.html表示用） */
    private PurposeDetail purposeDetail;

    /** 整列番号 */
    private Integer bcdOrder;

    /** 種目名称 */
    private String bcdTypeName;

    /** 金額 */
    private Long bcdPrice;

    /** 建築面積 */
    private Double bcdAreaBuilding;

    /** 延床面積 */
    private Double bcdAreaTotalfloor;

    /** 改修面積 */
    private Double bcdAreaRenovation;

    /** 外構面積 */
    private Double bcdAreaExterior;

    /** 新規判定 */
    // 新規登録の場合はTrue、更新の場合はfalse
    private Boolean isNew;

}