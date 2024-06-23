package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.entity.Employee;

@Mapper
public interface EmployeeMapper {

    /** 全件取得 */
    List<Employee> selectAll();

    /** 1件取得 */
    Employee selectByCode(@Param("code") String code);

    /**　登録 */
    void insert(Employee employee);

    /**　更新 */
    void update(Employee employee);

    /** 削除 */
    void delete(@Param("code") String code);
}