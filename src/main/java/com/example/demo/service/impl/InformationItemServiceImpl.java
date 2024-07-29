package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.InformationItem;
import com.example.demo.repository.InformationItemMapper;
import com.example.demo.service.InformationItemService;

import lombok.RequiredArgsConstructor;

/**
* 内訳情報区分サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class InformationItemServiceImpl implements InformationItemService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final InformationItemMapper mapper;

    /** 【Map生成】 */
    @Override
    public Map<String, Integer> getInformationItemMap() {

        /** データベースから値を取得 */
        List<InformationItem> informationItem = mapper.selectAll();

        /** データベースから取り出した値を格納するためのMapを作成 */
        Map<String, Integer> informationItemMap = new LinkedHashMap<>();

        /** 拡張for文を用いて取り出したデータを1行ずつ取り出し、IDと名前をMapにセットしていく */
        for(InformationItem row : informationItem) {
            String iiItemName = row.getIiItemName();
            Integer iiId = row.getIiId();
            informationItemMap.put(iiItemName, iiId);
        }
        return informationItemMap;

    }

}