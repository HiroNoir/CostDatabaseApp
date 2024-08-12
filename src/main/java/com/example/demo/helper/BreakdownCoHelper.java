package com.example.demo.helper;

import com.example.demo.entity.BreakdownCo;
import com.example.demo.form.BreakdownCoForm;

/**
* 内訳頭紙サービスヘルパークラス
*/
public class BreakdownCoHelper {

    /** 【FormからEntityへ変換】 */
    public static BreakdownCo convertEntity(BreakdownCoForm form) {
        BreakdownCo entity = new BreakdownCo();
        entity.setBcoId(form.getBcoId());
        entity.setBcoCcId(form.getBcoCcId());
        entity.setConstructionContract(form.getConstructionContract());
        entity.setBcoCoId(form.getBcoCoId());
        entity.setCategoryOutline(form.getCategoryOutline());
        entity.setBcoPrice(form.getBcoPrice());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static BreakdownCoForm convertForm(BreakdownCo entity) {
        BreakdownCoForm form = new BreakdownCoForm();
        form.setBcoId(entity.getBcoId());
        form.setBcoCcId(entity.getBcoCcId());
        form.setConstructionContract(entity.getConstructionContract());
        form.setBcoCoId(entity.getBcoCoId());
        form.setCategoryOutline(entity.getCategoryOutline());
        form.setBcoPrice(entity.getBcoPrice());
        return form;
    }

}