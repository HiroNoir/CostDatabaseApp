package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.ConstructionContractService;

import lombok.RequiredArgsConstructor;

/**
* 内訳頭紙コントローラークラス
*/
@Controller
@RequestMapping("/breakdown-co")
@RequiredArgsConstructor
public class BreakdownCoController {

    /** メソッド認可メモ */
    // 下記メソッドには@PreAuthorize("hasAuthority('EDITOR')")を付し、編集者権限を有するユーザーのみ実行可能とする
    // 　【登録画面表示】、【登録処理実行】、【更新画面表示】、【更新処理実行】
    // 下記メソッドには@PreAuthorize("hasAuthority('ADMIN')")を付し、管理者権限を有するユーザーのみ実行可能とする
    // 　【削除処理実行】
    // これらのメソッド認可を設定しておかないと、URLにメソッド名で実行可能となってしまう。よって、権限による認可を付す
    // 権限のないユーザーがURLにメソッド名を書いてで実行すると、405エラーが発生し、405.htmlに画面遷移する

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final BreakdownCoService service;
    // 他テーブルのデータを取得するため、他テーブルを扱うサービインターフェスをDI
    private final ConstructionContractService constructionContractService;

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer bcoCcId, Model model) {

        /** 現在表示している工事契約を取得 */
        String projectName = constructionContractService.findById(bcoCcId).getProjectName();
        model.addAttribute("projectName", projectName);

        /** 特定画面へ遷移 */
        // Modelに格納
        model.addAttribute("breakdownCo", service.findAllById(bcoCcId));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-co/specify";

    }

}