package com.example.demo.controller;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.form.BreakdownCdForm;
import com.example.demo.helper.BreakdownCdHelper;
import com.example.demo.service.BreakdownCdService;
import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.CategoryOutlineService;
import com.example.demo.service.ConstructionContractService;

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
    private final ConstructionContractService constructionContractService;
    private final CategoryOutlineService categoryOutlineService;
    private final BreakdownCoService breakdownCoservice;

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer bcdBcoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 現在表示している工事契約、内訳頭紙区分、内訳頭紙金額を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが存在しない場合IndexOutOfBoundsExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // 対象データを取得
            BreakdownCo breakdownCo = breakdownCoservice.findByBcoId(bcdBcoId);
            // 工事契約を取得
            Integer ccId = breakdownCo.getBcoCcId();
            ConstructionContract targetCcId = constructionContractService.findById(ccId);
            // Modelに格納
            model.addAttribute("projectName", targetCcId.getProjectName());
            model.addAttribute("ccId", targetCcId.getCcId());
            // 内訳頭紙区分を取得
            Integer coId = breakdownCo.getBcoCoId();
            CategoryOutline targetCoId = categoryOutlineService.findById(coId);
            // Modelに格納
            model.addAttribute("coIdTypeName", targetCoId.getCoTypeName());
            model.addAttribute("coId", targetCoId.getCoId());
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

        /** ローカルフィールド定義、及び、初期化 */
        Long longDirectConstructionPrice = null;     // breakdown_coテーブルより取得した各種目の直接工事費
        Long longSumDirectConstructionPrice = null;  // breakdown_cdテーブルより取得した各種目の直接工事費

        /** 現在表示している内訳頭紙の各種目の金額をbreakdown_coテーブルより取得 */
        // 対象データを取得
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo directConstructionPrice = breakdownCoservice.findByBcoId(bcdBcoId);
            longDirectConstructionPrice = directConstructionPrice.getBcoPrice();;
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longDirectConstructionPrice = 0L;
        }
        // Modelに格納
        model.addAttribute("longTargePrice", longDirectConstructionPrice);

        /** 「内訳頭紙の直接工事費－内訳種目の合計金額」の検算結果を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCd sumDirectConstructionPrice = service.findSumById(bcdBcoId);
            longSumDirectConstructionPrice = sumDirectConstructionPrice.getSumBcdPrice();
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longSumDirectConstructionPrice = 0L;
        }
        // 上記合計金額より直接工事費を減算して差額を算出
        Long defDirectConstructionPrice = longSumDirectConstructionPrice - longDirectConstructionPrice;
        // Modelに格納
        model.addAttribute("defDirectConstructionPrice", defDirectConstructionPrice);

        /** 特定画面へ遷移 */
        // 特定画面へ引き継ぐデータをModelに格納
        model.addAttribute("bcoId", bcdBcoId);
        // Modelに格納
        model.addAttribute("breakdownCd", service.findAllById(bcdBcoId));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-cd/specify";

    }

    /**　【一件取得】 */
    @GetMapping("/{id1}/{id2}/detail")
    public String detail(@PathVariable("id1") Integer bcdBcoId,
                         @PathVariable("id2") String bcdTypeName,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd target = service.findById(bcdBcoId, bcdTypeName);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("breakdownCd", service.findById(bcdBcoId, bcdTypeName));
            // 詳細画面へ遷移（アドレス指定）
            return "breakdown-cd/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-cd/" + bcdBcoId + "/specify";
        }

    }

    /** 【登録画面表示】　*/
    @GetMapping("/{id}/create")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String create(@PathVariable("id") Integer bcdBcoId,
            @ModelAttribute BreakdownCdForm form,
            Model model, RedirectAttributes redirectAttributes) {

        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("breakdownCdForm", form);　→form.htmlへ引き継ぐModel名となる
        // 更新画面表示・更新処理実行のメソッドにおいても上記と同様のModel名とする

        /** 登録画面へ遷移 */
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "breakdown-cd/form";

    }

    /** 【登録処理実行】 */
    // ▲未実装

    /** 【更新画面表示】 */
    @GetMapping("/{id1}/{id2}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id1") Integer bcdBcoId,
                       @PathVariable("id2") String bcdTypeName,
            Model model, RedirectAttributes redirectAttributes) {

        /** 更新処理実行時入力チェックからのエラーメッセージ表示処理　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(bcdBcoId == null) {
            // 更新画面へ遷移（アドレス指定）
            return "breakdown-cd/form";
        }

        /** 更新画面へ遷移 */
        // 更新画面へ遷移　その1で、idがnullでない場合は新規で更新画面へ遷移する
        // 更新画面への遷移はGETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd target = service.findById(bcdBcoId, bcdTypeName);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // EntityからFormへ変換
            BreakdownCdForm form = BreakdownCdHelper.convertForm(target);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("breakdownCdForm", form);
            // 更新画面のform.htmlに引き継ぐべきパラメータをFormに格納
            form.setBcdBcoId(bcdBcoId);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 更新画面へ遷移（アドレス指定）
            return "breakdown-cd/form";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-cd/" + bcdBcoId +"/specify";
        }

    }

    /**　【更新処理実行】 */
    // ▲未実装

    /** 【削除処理実行】 */
    // ▲未実装

}