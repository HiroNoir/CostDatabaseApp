package com.example.demo.service;

import java.util.List;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.Employee;
import com.example.demo.service.impl.LoginUserDetails;

/**
* 従業員サービスインターフェース
*/
public interface EmployeeService {

    /** 【全件検索】 */
    List<Employee> findAll();

    /** 【1件検索】 */
    Employee findByCode(String code);

    /** 【登録実行】 */
    ErrorKinds insert(Employee employee);

    /** 【更新実行】 */
    ErrorKinds update(Employee employee);

    /** 【削除実行】 */
    ErrorKinds delete(String code, LoginUserDetails loginUserDetails);

}