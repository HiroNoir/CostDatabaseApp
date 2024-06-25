package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Employee;

/**
* 従業員サービスインターフェース
*/
public interface EmployeeService {

    /** 【全件検索】 */
    List<Employee> findAll();

    /** 【1件検索】 */
    Employee findByCode(String code);

    /** 【登録実行】 */
    void insert(Employee employee);

    /** 【更新実行】 */
    void update(Employee employee);

    /** 【削除実行】 */
    void delete(String code);

}