package com.example.demo.helper;

import com.example.demo.entity.ConstructionContract;
import com.example.demo.form.ConstructionContractForm;

/**
* 工事契約サービスヘルパークラス
*/
public class ConstructionContractHelper {

    /** 【FormからEntityへ変換】 */
    public static ConstructionContract convertEntity(ConstructionContractForm form) {
        ConstructionContract entity = new ConstructionContract();
        entity.setCcId(form.getCcId());
        entity.setCcDcId(form.getCcDcId());
        entity.setCcEtId(form.getCcEtId());
        entity.setEstimateYear(form.getEstimateYear());
        entity.setEstimateMonth(form.getEstimateMonth());
        entity.setConstructionPeriod(form.getConstructionPeriod());
        entity.setProjectName(form.getProjectName());
        entity.setSiteAddress(form.getSiteAddress());
        entity.setSiteArea(form.getSiteArea());
        entity.setSepareteConstruction(form.getSepareteConstruction());
        entity.setPlannedPrice(form.getPlannedPrice());
        entity.setContractPrice(form.getContractPrice());
        entity.setContractorName(form.getContractorName());
        entity.setRemarksSection(form.getRemarksSection());
        entity.setBlueprintAddress(form.getBlueprintAddress());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static ConstructionContractForm convertForm(ConstructionContract entity) {
        ConstructionContractForm form = new ConstructionContractForm();
        form.setCcId(entity.getCcId());
        form.setCcDcId(entity.getCcDcId());
        form.setCcEtId(entity.getCcEtId());
        form.setEstimateYear(entity.getEstimateYear());
        form.setEstimateMonth(entity.getEstimateMonth());
        form.setConstructionPeriod(entity.getConstructionPeriod());
        form.setProjectName(entity.getProjectName());
        form.setSiteAddress(entity.getSiteAddress());
        form.setSiteArea(entity.getSiteArea());
        form.setSepareteConstruction(entity.getSepareteConstruction());
        form.setPlannedPrice(entity.getPlannedPrice());
        form.setContractPrice(entity.getContractPrice());
        form.setContractorName(entity.getContractorName());
        form.setRemarksSection(entity.getRemarksSection());
        form.setBlueprintAddress(entity.getBlueprintAddress());
        return form;
    }

}