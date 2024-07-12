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
        entity.setBcoCoId(form.getBcoCoId());
        entity.setBcoPrice(form.getBcoPrice());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static BreakdownCoForm convertForm(BreakdownCo entity) {
        BreakdownCoForm form = new BreakdownCoForm();
        form.setBcoId(entity.getBcoId());
        form.setBcoCcId(entity.getBcoCcId());
        form.setBcoCoId(entity.getBcoCoId());
        form.setBcoPrice(entity.getBcoPrice());
          return form;
    }

}