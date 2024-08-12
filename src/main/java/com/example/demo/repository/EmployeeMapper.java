package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.Employee;

/**
* 従業員リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface EmployeeMapper {

    /** 【全件取得】 */
    List<Employee> selectAll();

    /** 【一件取得】 */
    Employee selectByCode(String code);

    /**　【登録実行】 */
    void insert(Employee employee);

    /**　【更新実行】 */
    void update(Employee employee);

    /** 【削除実行】 */
    void delete(String code);

}