package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.entity.BreakdownCo;
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

        /** ローカルフィールド定義、及び、初期化 */
        Long longDirectConstructionPrice = null;
        Long longTotalConstructionPrice = null;
        Long longSumDirectConstructionPrice = null;

        /** 現在表示している工事契約を取得 */
        String projectName = constructionContractService.findById(bcoCcId).getProjectName();
        model.addAttribute("projectName", projectName);

        /** 現在表示している工事契約の直接工事費を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo directConstructionPrice = service.priceFindById(bcoCcId, (Integer)1050);
            longDirectConstructionPrice = directConstructionPrice.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longDirectConstructionPrice = 0L;
        }

        /** 現在表示している工事契約の工事価格を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo totalConstructionPrice = service.priceFindById(bcoCcId, (Integer)1100);
            longTotalConstructionPrice = totalConstructionPrice.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longTotalConstructionPrice = 0L;
        }

        /** 「建築+電気設備+機械設備+昇降機設備」の検算結果を取得 */
        // 現在表示している工事契約の「建築+電気設備+機械設備+昇降機設備」の合計金額を取得
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo sumDirectConstructionPrice = service.findSumById(bcoCcId, (Integer)1010, (Integer)1040);
            longSumDirectConstructionPrice = sumDirectConstructionPrice.getSumBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longSumDirectConstructionPrice = 0L;
        }
        // 上記合計金額より直接工事費を減算して差額を算出
        Long defDirectConstructionPrice = longDirectConstructionPrice -longSumDirectConstructionPrice;
        // Modelに格納
        model.addAttribute("defDirectConstructionPrice", defDirectConstructionPrice);

        /** 特定画面へ遷移 */
        // Modelに格納
        model.addAttribute("breakdownCo", service.findAllById(bcoCcId,
                longDirectConstructionPrice, longTotalConstructionPrice));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-co/specify";

    }

}