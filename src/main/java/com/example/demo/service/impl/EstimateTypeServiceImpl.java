package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.EstimateType;
import com.example.demo.repository.EstimateTypeMapper;
import com.example.demo.service.EstimateTypeService;

import lombok.RequiredArgsConstructor;

/**
* 内訳種別サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class EstimateTypeServiceImpl implements EstimateTypeService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final EstimateTypeMapper mapper;

    /** 【全件取得】 */
    @Override
    public List<EstimateType> findAll() {
        return mapper.selectAll();
    }

}