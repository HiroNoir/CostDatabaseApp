package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Employee;

public interface EmployeeService {

    /** 全件検索 */
    List<Employee> findAll();

    /** 1件検索 */
    Employee findByCode(String code);

    /** 登録 */
    void insert(Employee employee);

    /** 更新 */
    void update(Employee employee);

    /** 削除 */
    void delete(String code);
}