package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getEstimateTypeMap() {

        /** データベースから値を取得 */
        List<EstimateType> estimateType = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> estimateTypeMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(EstimateType row : estimateType) {
            String typeName = row.getTypeName();
            Integer etId = row.getEtId();
            estimateTypeMap.put(typeName, etId);
        }
        return estimateTypeMap;

    }

}