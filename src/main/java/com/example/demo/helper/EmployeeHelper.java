package com.example.demo.helper;

import com.example.demo.entity.Employee;
import com.example.demo.form.EmployeeForm;

public class EmployeeHelper {

    /** Entityへの変換 */
    public static Employee convertEntity(EmployeeForm form) {
        Employee entity = new Employee();
        entity.setCode(form.getCode());
        entity.setFirstName(form.getFirstName());
        entity.setLastName(form.getLastName());
        entity.setPassword(form.getPassword());
        entity.setRolea(form.getRolea());
        return entity;
    }

    /** Formへの変換 */
    public static EmployeeForm convertForm(Employee entity) {
        EmployeeForm form = new EmployeeForm();
        form.setCode(entity.getCode());
        form.setFirstName(entity.getFirstName());
        form.setLastName(entity.getLastName());
        form.setPassword(entity.getPassword());
        form.setRolea(entity.getRolea());
        // 更新画面としてform.htmlが実行されるよう設定
        form.setIsNew(false);
        return form;
    }

}