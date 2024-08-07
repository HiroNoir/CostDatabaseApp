package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.CategoryDetail;
import com.example.demo.repository.CategoryDetailMapper;
import com.example.demo.service.CategoryDetailService;

import lombok.RequiredArgsConstructor;

/**
* 内訳種目区分設定サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class CategoryDetailServiceImpl implements CategoryDetailService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final CategoryDetailMapper mapper;

    /** 【一件取得】 */
    @Override
    public CategoryDetail findById(Integer cdId) {
        return mapper.selectById(cdId);
    }

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getCategoryDetailMap() {

        /** データベースから値を取得 */
        List<CategoryDetail> categoryDetail = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> categoryDetailMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(CategoryDetail row : categoryDetail) {
            String cdTypeName = row.getCdTypeName();
            Integer cdId = row.getCdId();
            categoryDetailMap.put(cdTypeName, cdId);
        }
        return categoryDetailMap;

    }

}