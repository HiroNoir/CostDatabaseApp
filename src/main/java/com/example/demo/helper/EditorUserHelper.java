package com.example.demo.helper;

import com.example.demo.entity.EditorUser;
import com.example.demo.form.EditorUserForm;

public class EditorUserHelper {

    /** Entityへの変換 */
    public static EditorUser convertEntity(EditorUserForm form) {
        EditorUser entity = new EditorUser();
        entity.setEuCode(form.getEuCode());
        entity.setName(form.getName());
        entity.setPassword(form.getPassword());
        return entity;
    }

    /** Formへの変換 */
    public static EditorUserForm convertForm(EditorUser entity) {
        EditorUserForm form = new EditorUserForm();
        form.setEuCode(entity.getEuCode());
        form.setName(entity.getName());
        form.setPassword(entity.getPassword());
        // 更新画面としてform.htmlが実行されるよう設定
        form.setIsNew(false);
        return form;
    }

}