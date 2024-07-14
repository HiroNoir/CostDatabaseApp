package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.service.BreakdownCdService;

import lombok.RequiredArgsConstructor;

/**
* 内訳種目コントローラークラス
*/
@Controller
@RequestMapping("/breakdown-cd")
@RequiredArgsConstructor
public class BreakdownCdController {

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
    private final BreakdownCdService service;
    // 他テーブルのデータを取得するため、他テーブルを扱うサービインターフェスをDI

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer bcdBcoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 特定画面へ遷移 */
        // Modelに格納
        model.addAttribute("breakdownCd", service.findAllById(bcdBcoId));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-cd/specify";

    }
}