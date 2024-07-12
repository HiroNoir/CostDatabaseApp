package com.example.demo.controller;

import java.util.Map;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entity.BreakdownCo;
import com.example.demo.form.BreakdownCoForm;
import com.example.demo.helper.BreakdownCoHelper;
import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.CategoryOutlineService;
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
    private final CategoryOutlineService categoryOutlineService;

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer bcoCcId,
            Model model, RedirectAttributes redirectAttributes) {

        /** ローカルフィールド定義、及び、初期化 */
        Long longDirectConstructionPrice = null;     // 直接工事費
        Long longCommonExpensePrice = null;          // 共通費
        Long longTotalConstructionPrice = null;      // 工事価格
        Long longTaxPrice = null;                    // 消費税相当額
        Long longTotalPriceWithTax = null;           // 工事費（税込）
        Long longSumDirectConstructionPrice = null;  // 「建築+電気設備+機械設備+昇降機設備」の合計
        Long longSumCommonExpensePrice = null;       // 「共通仮設費+現場管理費+一般管理費等」の合計

        /** 現在表示している工事契約を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // Modelに格納
            String projectName = constructionContractService.findById(bcoCcId).getProjectName();
            model.addAttribute("projectName", projectName);
            model.addAttribute("projectId", bcoCcId);
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

        /** 現在表示している工事契約の「直接工事費」を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo directConstructionPrice = service.priceFindById(bcoCcId, (Integer)1050);
            longDirectConstructionPrice = directConstructionPrice.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longDirectConstructionPrice = 0L;
        }

        /** 現在表示している工事契約の「共通費」を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo commonExpensePrice = service.priceFindById(bcoCcId, (Integer)1090);
            longCommonExpensePrice = commonExpensePrice.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longCommonExpensePrice = 0L;
        }

        /** 現在表示している工事契約の「工事価格」を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo totalConstructionPrice = service.priceFindById(bcoCcId, (Integer)1100);
            longTotalConstructionPrice = totalConstructionPrice.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longTotalConstructionPrice = 0L;
        }

        /** 現在表示している工事契約の「消費税相当額」を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo taxPrice = service.priceFindById(bcoCcId, (Integer)1110);
            longTaxPrice = taxPrice.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longTaxPrice = 0L;
        }

        /** 現在表示している工事契約の「工事費」を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo totalPriceWithTax = service.priceFindById(bcoCcId, (Integer)1120);
            longTotalPriceWithTax = totalPriceWithTax.getBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longTotalPriceWithTax = 0L;
        }

        /** 「直接工事費－（建築+電気設備+機械設備+昇降機設備）」の検算結果を取得 */
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

        /** 「共通費－（共通仮設費+現場管理費+一般管理費等）」の検算結果を取得 */
        // 現在表示している工事契約の「共通仮設費+現場管理費+一般管理費等」の合計金額を取得
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo sumCommonExpensePrice = service.findSumById(bcoCcId, (Integer)1060, (Integer)1080);
            longSumCommonExpensePrice = sumCommonExpensePrice.getSumBcoPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longSumCommonExpensePrice = 0L;
        }
        // 上記合計金額より直接工事費を減算して差額を算出
        Long defSumCommonExpensePrice = longCommonExpensePrice -longSumCommonExpensePrice;
        // Modelに格納
        model.addAttribute("defSumCommonExpensePrice", defSumCommonExpensePrice);

        /** 「工事価格－（直接工事費+共通費）」の検算結果を取得 */
        // 上記合計金額より工事価格から直接工事費と共通費を減算して差額を算出
        Long defTotalConstructionPrice = longTotalConstructionPrice -
                ( longDirectConstructionPrice + longCommonExpensePrice);
        // Modelに格納
        model.addAttribute("defTotalConstructionPrice", defTotalConstructionPrice);

        /** 「工事費－（工事価格+消費税相当額）」の検算結果を取得 */
        // 上記合計金額より工事価格から直接工事費と共通費を減算して差額を算出
        Long defTotalPriceWithTax = longTotalPriceWithTax -
                ( longTotalConstructionPrice + longTaxPrice);
        // Modelに格納
        model.addAttribute("defTotalPriceWithTax", defTotalPriceWithTax);

        /** 特定画面へ遷移 */
        // Modelに格納
        model.addAttribute("breakdownCo", service.findAllById(bcoCcId,
                longDirectConstructionPrice, longTotalConstructionPrice));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-co/specify";

    }

    /**　【一件取得】 */
    @GetMapping("/{id1}/{id2}/detail")
    public String detail(@PathVariable("id1") Integer bcoCcId,
                         @PathVariable("id2") Integer bcoCoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCo target = service.findById(bcoCcId, bcoCoId);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("breakdownCo", service.findById(bcoCcId, bcoCoId));
            // 詳細画面へ遷移（アドレス指定）
            return "breakdown-co/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-co/" + bcoCcId + "/specify";
        }

    }

    /** 【登録画面表示】　*/
    @GetMapping("/{id}/create")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String create(@PathVariable("id") Integer bcoCcId,
            @ModelAttribute BreakdownCoForm form,
            Model model, RedirectAttributes redirectAttributes) {

        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("breakdownCoForm", form);　→form.htmlへ引き継ぐModel名となる
        // 更新画面表示・更新処理実行のメソッドにおいても上記と同様のModel名とする

        /** 現在表示している工事契約を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // Modelに格納
            String projectName = constructionContractService.findById(bcoCcId).getProjectName();
            model.addAttribute("projectName", projectName);
            model.addAttribute("projectId", bcoCcId);
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-co/" + bcoCcId + "/specify";
        }

        /** 内訳頭紙区分設定Mapを取得 */
        Map<String, Integer> categoryOutlineMap = categoryOutlineService.getCategoryOutlineMap();
        // Modelに格納
        model.addAttribute("categoryOutlineMap", categoryOutlineMap);

        /** 登録画面へ遷移 */
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "breakdown-co/form";

    }

    /** 【登録処理実行】 */
    // ▲未実装

    /** 【更新画面表示】 */
    @GetMapping("/{id1}/{id2}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id1") Integer bcoCcId,
                       @PathVariable("id2") Integer bcoCoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 現在表示している工事契約を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // Modelに格納
            String projectName = constructionContractService.findById(bcoCcId).getProjectName();
            model.addAttribute("projectName", projectName);
            model.addAttribute("projectId", bcoCcId);
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-co/" + bcoCcId + "/specify";
        }

        /** 内訳頭紙区分設定Mapを取得 */
        Map<String, Integer> categoryOutlineMap = categoryOutlineService.getCategoryOutlineMap();
        // Modelに格納
        model.addAttribute("categoryOutlineMap", categoryOutlineMap);

        /** 更新画面へ遷移　その1　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(bcoCcId == null || bcoCoId == null) {
            // 更新画面へ遷移（アドレス指定）
            return "breakdown-co/form";
        }

        /** 更新画面へ遷移　その2 */
        // 更新画面へ遷移　その1で、idがnullでない場合は新規で更新画面へ遷移する
        // 更新画面への遷移はGETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCo target = service.findById(bcoCcId, bcoCoId);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // EntityからFormへ変換
            BreakdownCoForm form = BreakdownCoHelper.convertForm(target);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("breakdownCoForm", form);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 更新画面へ遷移（アドレス指定）
            return "breakdown-co/form";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-co/" + bcoCcId +"/specify";
        }

    }

    /**　【更新処理実行】 */
    // ▲未実装

    /** 【削除処理実行】 */
    // ▲未実装

}