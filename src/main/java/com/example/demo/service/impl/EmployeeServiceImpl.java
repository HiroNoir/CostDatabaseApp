package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.Employee;
import com.example.demo.repository.EmployeeMapper;
import com.example.demo.service.EmployeeService;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class EmployeeServiceImpl implements EmployeeService {

    /** DI */
    private final EmployeeMapper mapper;

    @Override
    public List<Employee> findAll() {
        return mapper.selectAll();
    }

    @Override
    public Employee findByCode(String code) {
        return mapper.selectByCode(code);
    }

    @Override
    public void insert(Employee employee) {
        mapper.insert(employee);
    }

    @Override
    public void update(Employee employee) {
        mapper.update(employee);
    }

    @Override
    public void delete(String code) {
        mapper.delete(code);
    }

}