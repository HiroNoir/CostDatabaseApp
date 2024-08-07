package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.CategorySubject;
import com.example.demo.repository.CategorySubjectMapper;
import com.example.demo.service.CategorySubjectService;

import lombok.RequiredArgsConstructor;
/**
* 内訳科目区分設定サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class CategorySubjectServiceImpl implements CategorySubjectService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final CategorySubjectMapper mapper;

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getCategorySubjectMap() {

        /** データベースから値を取得 */
        List<CategorySubject> categorySubject = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> categorySubjectMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(CategorySubject row : categorySubject) {
            String csTypeName = row.getCsTypeName();
            Integer csId = row.getCsId();
            categorySubjectMap.put(csTypeName, csId);
        }
        return categorySubjectMap;

    }

}