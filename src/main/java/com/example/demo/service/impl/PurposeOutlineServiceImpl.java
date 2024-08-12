package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.PurposeOutline;
import com.example.demo.repository.PurposeOutlineMapper;
import com.example.demo.service.PurposeOutlineService;

import lombok.RequiredArgsConstructor;

/**
* 用途概略ｒ区分設定サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class PurposeOutlineServiceImpl implements PurposeOutlineService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final PurposeOutlineMapper mapper;

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getPurposeOutlineMap() {

        /** データベースから値を取得 */
        List<PurposeOutline> purposeOutline = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> purposeOutlineMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(PurposeOutline row : purposeOutline) {
            String poTypeName = row.getPoTypeName();
            Integer poId = row.getPoId();
            purposeOutlineMap.put(poTypeName, poId);
        }
        return purposeOutlineMap;

    }

}