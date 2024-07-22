package com.example.demo.helper;

import com.example.demo.entity.BreakdownCd;
import com.example.demo.form.BreakdownCdForm;

/**
* 内訳種目サービスヘルパークラス
*/
public class BreakdownCdHelper {

    /** 【FormからEntityへ変換】 */
    public static BreakdownCd convertEntity(BreakdownCdForm form) {
        BreakdownCd entity = new BreakdownCd();
        entity.setBcdId(form.getBcdId());
        entity.setConstructionContract(form.getConstructionContract());
        entity.setCategoryOutline(form.getCategoryOutline());
        entity.setBcdBcoId(form.getBcdBcoId());
        entity.setBreakdownCo(form.getBreakdownCo());
        entity.setBcdCdId(form.getBcdCdId());
        entity.setCategoryDetail(form.getCategoryDetail());
        entity.setBcdPoId(form.getBcdPoId());
        entity.setPurposeOutline(form.getPurposeOutline());
        entity.setBcdPdId(form.getBcdPdId());
        entity.setPurposeDetail(form.getPurposeDetail());
        entity.setBcdOrder(form.getBcdOrder());
        entity.setBcdTypeName(form.getBcdTypeName());
        entity.setBcdPrice(form.getBcdPrice());
        entity.setBcdAreaBuilding(form.getBcdAreaBuilding());
        entity.setBcdAreaTotalfloor(form.getBcdAreaTotalfloor());
        entity.setBcdAreaRenovation(form.getBcdAreaRenovation());
        entity.setBcdAreaExterior(form.getBcdAreaExterior());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static BreakdownCdForm convertForm(BreakdownCd entity) {
        BreakdownCdForm form = new BreakdownCdForm();
        form.setBcdId(entity.getBcdId());
        form.setConstructionContract(entity.getConstructionContract());
        form.setCategoryOutline(entity.getCategoryOutline());
        form.setBcdBcoId(entity.getBcdBcoId());
        form.setBreakdownCo(entity.getBreakdownCo());
        form.setBcdCdId(entity.getBcdCdId());
        form.setCategoryDetail(entity.getCategoryDetail());
        form.setBcdPoId(entity.getBcdPoId());
        form.setPurposeOutline(entity.getPurposeOutline());
        form.setBcdPdId(entity.getBcdPdId());
        form.setPurposeDetail(entity.getPurposeDetail());
        form.setBcdOrder(entity.getBcdOrder());
        form.setBcdTypeName(entity.getBcdTypeName());
        form.setBcdPrice(entity.getBcdPrice());
        form.setBcdAreaBuilding(entity.getBcdAreaBuilding());
        form.setBcdAreaTotalfloor(entity.getBcdAreaTotalfloor());
        form.setBcdAreaRenovation(entity.getBcdAreaRenovation());
        form.setBcdAreaExterior(entity.getBcdAreaExterior());
        return form;
    }

}