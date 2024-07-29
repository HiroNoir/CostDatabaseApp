package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.PurposeDetail;
import com.example.demo.repository.PurposeDetailMapper;
import com.example.demo.service.PurposeDetailService;

import lombok.RequiredArgsConstructor;

/**
* 用途詳細区分サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class PurposeDetailServiceImpl implements PurposeDetailService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final PurposeDetailMapper mapper;

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getPurposeDetailMap() {

        /** データベースから値を取得 */
        List<PurposeDetail> purposeDetail = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> purposeDetailMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(PurposeDetail row : purposeDetail) {
            String pdTypeName = row.getPdTypeName();
            Integer pdId = row.getPdId();
            purposeDetailMap.put(pdTypeName, pdId);
        }
        return purposeDetailMap;

    }

    /** 【用途詳細選択ェックのための一件取得】 */
    @Override
    public PurposeDetail findById(Integer pdId) {
        return mapper.selectById(pdId);
    }

}