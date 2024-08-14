package com.example.demo.helper;

import com.example.demo.entity.InformationDb;
import com.example.demo.form.InformationDbForm;

/**
* 内訳情報サービスヘルパークラス
*/
public class InformationDbHelper {

    /** 【FormからEntityへ変換】 */
    public static InformationDb convertEntity(InformationDbForm form) {
        InformationDb entity = new InformationDb();
        entity.setIdbBcdId(form.getIdbBcdId());
        entity.setIdbIiId(form.getIdbIiId());
        entity.setIdbDataText(form.getIdbDataText());
        entity.setIdbDataDouble(form.getIdbDataDouble());
        entity.setIdbDataBigint(form.getIdbDataBigint());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static InformationDbForm convertForm(InformationDb entity) {
        InformationDbForm form = new InformationDbForm();
        form.setIdbBcdId(entity.getIdbBcdId());
        form.setIdbIiId(entity.getIdbIiId());
        form.setIdbDataText(entity.getIdbDataText());
        form.setIdbDataDouble(entity.getIdbDataDouble());
        form.setIdbDataBigint(entity.getIdbDataBigint());
        return form;
    }

}