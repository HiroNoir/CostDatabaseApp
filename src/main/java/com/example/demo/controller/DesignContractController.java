package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.DesignContractService;

import lombok.RequiredArgsConstructor;

/**
* 設計契約コントローラークラス
*/
@Controller
@RequestMapping("/design-contract")
@RequiredArgsConstructor
public class DesignContractController {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final DesignContractService service;

    /** 【全件取得】 */
    @GetMapping("/list")
    public String list(Model model) {

        /** 一覧画面へ遷移 */
        // Modelに格納
        model.addAttribute("designContract", service.findAll());
        // 一覧画面へ遷移（アドレス指定）
        return "design-contract/list";

    }

}
