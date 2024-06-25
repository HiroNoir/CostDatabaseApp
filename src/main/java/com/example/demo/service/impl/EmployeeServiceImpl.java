package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.Employee;
import com.example.demo.repository.EmployeeMapper;
import com.example.demo.service.EmployeeService;

import lombok.RequiredArgsConstructor;

/**
* 従業員サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class EmployeeServiceImpl implements EmployeeService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final EmployeeMapper mapper;

    /** 【全件検索】 */
    @Override
    public List<Employee> findAll() {
        return mapper.selectAll();
    }

    /** 【1件検索】 */
    @Override
    public Employee findByCode(String code) {
        return mapper.selectByCode(code);
    }

    /** 【登録実行】 */
    @Override
    public void insert(Employee employee) {
        mapper.insert(employee);
    }

    /** 【更新実行】 */
    @Override
    public void update(Employee employee) {
        mapper.update(employee);
    }

    /** 【削除実行】 */
    @Override
    public void delete(String code) {
        mapper.delete(code);
    }

}