package com.example.demo.helper;

import com.example.demo.entity.DesignContract;
import com.example.demo.form.DesignContractForm;

/**
* 設計契約サービスヘルパークラス
*/
public class DesignContractHelper {

    /** 【FormからEntityへ変換】 */
    public static DesignContract convertEntity(DesignContractForm form) {
        DesignContract entity = new DesignContract();
        entity.setDcId(form.getDcId());
        entity.setContractNumber(form.getContractNumber());
        entity.setContractName(form.getContractName());
        entity.setCustomerName(form.getCustomerName());
        return entity;
    }

    /** 【EntityからFormへ変換】 */
    public static DesignContractForm convertForm(DesignContract entity) {
        DesignContractForm form = new DesignContractForm();
        form.setDcId(entity.getDcId());
        form.setContractNumber(entity.getContractNumber());
        form.setContractName(entity.getContractName());
        form.setCustomerName(entity.getCustomerName());
        return form;
    }

}