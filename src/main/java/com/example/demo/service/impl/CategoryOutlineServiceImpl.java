package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.CategoryOutline;
import com.example.demo.repository.CategoryOutlineMapper;
import com.example.demo.service.CategoryOutlineService;

import lombok.RequiredArgsConstructor;

/**
* 内訳頭紙サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class CategoryOutlineServiceImpl implements CategoryOutlineService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final CategoryOutlineMapper mapper;

    /** 【一件取得】 */
    @Override
    public CategoryOutline findById(Integer coId) {
        return mapper.selectById(coId);
    }

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getCategoryOutlineMap() {

        /** データベースから値を取得 */
        List<CategoryOutline> categoryOutline = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> categoryOutlineMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(CategoryOutline row : categoryOutline) {
            String typeName = row.getTypeName();
            Integer coId = row.getCoId();
            categoryOutlineMap.put(typeName, coId);
        }
        return categoryOutlineMap;

    }


}