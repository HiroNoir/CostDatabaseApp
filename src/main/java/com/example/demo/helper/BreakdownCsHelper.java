package com.example.demo.helper;

import com.example.demo.entity.BreakdownCs;
import com.example.demo.form.BreakdownCsForm;

/**
* 内訳科目サービスヘルパークラス
*/
public class BreakdownCsHelper {

    /** 【FormからEntityへ変換】 */
    public static BreakdownCs convertEntity(BreakdownCsForm form) {
        BreakdownCs entity = new BreakdownCs();
        entity.setBcsBcdId(form.getBcsBcdId());
        entity.setBcsCsId(form.getBcsCsId());
        entity.setBcsDataText(form.getBcsDataText());
        entity.setBcsDataBigint(form.getBcsDataBigint());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static BreakdownCsForm convertForm(BreakdownCs entity) {
        BreakdownCsForm form = new BreakdownCsForm();
        form.setBcsBcdId(entity.getBcsBcdId());
        form.setBcsCsId(entity.getBcsCsId());
        form.setBcsDataText(entity.getBcsDataText());
        form.setBcsDataBigint(entity.getBcsDataBigint());
        return form;
    }

}