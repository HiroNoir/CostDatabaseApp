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

import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.entity.BreakdownCs;
import com.example.demo.entity.CategoryDetail;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.form.BreakdownCsForm;
import com.example.demo.service.BreakdownCdService;
import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.BreakdownCsService;
import com.example.demo.service.CategoryDetailService;
import com.example.demo.service.CategoryOutlineService;
import com.example.demo.service.CategorySubjectService;
import com.example.demo.service.ConstructionContractService;

import lombok.RequiredArgsConstructor;

/**
* 内訳科目コントローラークラス
*/
@Controller
@RequestMapping("/breakdown-cs")
@RequiredArgsConstructor
public class BreakdownCsController {

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
    private final BreakdownCsService service;
    // 他テーブルのデータを取得するため、他テーブルを扱うサービインターフェスをDI
    private final ConstructionContractService constructionContractService;
    private final CategoryOutlineService categoryOutlineService;
    private final BreakdownCoService breakdownCoService;
    private final CategoryDetailService categoryDetailService;
    private final CategorySubjectService categorySubjectService;
    private final BreakdownCdService breakdownCdService;

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer bcsBcdId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 現在表示している工事契約、内訳頭紙区分、内訳頭紙金額を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが存在しない場合IndexOutOfBoundsExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // 対象データを取得
            BreakdownCd breakdownCd = breakdownCdService.findByBcdId(bcsBcdId);
            BreakdownCo breakdownCo = breakdownCoService.findByBcoId(breakdownCd.getBcdBcoId());
            // 工事契約を取得
            Integer ccId = breakdownCo.getBcoCcId();
            ConstructionContract targetConstructionContract = constructionContractService.findById(ccId);
            // Modelに格納
            model.addAttribute("projectName", targetConstructionContract.getProjectName());
            model.addAttribute("ccId", targetConstructionContract.getCcId());
            // 内訳頭紙区分を取得
            Integer coId = breakdownCo.getBcoCoId();
            CategoryOutline targetCategoryOutline = categoryOutlineService.findById(coId);
            // Modelに格納
            model.addAttribute("coTypeName", targetCategoryOutline.getCoTypeName());
            model.addAttribute("coId", targetCategoryOutline.getCoId());
            // 内訳種目区分を取得
            Integer cdId = breakdownCd.getBcdCdId();
            CategoryDetail targetCategoryDetail = categoryDetailService.findById(cdId);
            // Modelに格納
            model.addAttribute("cdTypeName", targetCategoryDetail.getCdTypeName());
            model.addAttribute("cdId", targetCategoryDetail.getCdId());
            // 内訳種目を取得
            // Modelに格納
            model.addAttribute("bcdTypeName", breakdownCd.getBcdTypeName());
            model.addAttribute("bcdId", breakdownCd.getBcdId());
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

        /** ローカルフィールド定義、及び、初期化 */
        Long longDirectConstructionPrice = null;     // breakdown_cdテーブルより取得した各種目の直接工事費
        Long longSumDirectConstructionPrice = null;  // breakdown_cdテーブルより取得した各種目の直接工事費

        /** 現在表示している内訳種目の各金額をbreakdown_cdテーブルより取得 */
        // 対象データを取得
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCd directConstructionPrice = breakdownCdService.findByBcdId(bcsBcdId);
            longDirectConstructionPrice = directConstructionPrice.getBcdPrice();;
        } catch (NullPointerException e) {
            // Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longDirectConstructionPrice = 0L;
        }
        // Modelに格納
        model.addAttribute("longTargePrice", longDirectConstructionPrice);

        /** 「内訳種目の直接工事費－内訳科目の合計金額」の検算結果を取得 */
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCs sumDirectConstructionPrice = service.findSumById(bcsBcdId);
            longSumDirectConstructionPrice = sumDirectConstructionPrice.getSumBcsPrice();
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
        model.addAttribute("bcsBcdId", bcsBcdId);
        // Modelに格納
        model.addAttribute("breakdownCs", service.findAllById(bcsBcdId));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-cs/specify";

    }

    /**　【一件取得】 */
    @GetMapping("/{id1}/{id2}/detail")
    public String detail(@PathVariable("id1") Integer bcsBcdId,
                         @PathVariable("id2") Integer bcsCsId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCs targetBreakdownCs = service.findById(bcsBcdId, bcsCsId);
        // 対象データの有無確認
        if (targetBreakdownCs != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("breakdownCs", service.findById(bcsBcdId, bcsCsId));
            // 詳細画面へ遷移（アドレス指定）
            return "breakdown-cs/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-cs/" + bcsBcdId + "/specify";
        }

    }


    /** 【登録画面表示】　*/
    @GetMapping("/{id}/create")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String create(@PathVariable("id") Integer bcsBcdId,
            @ModelAttribute BreakdownCsForm form,
            Model model, RedirectAttributes redirectAttributes) {

        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("breakdownCsForm", form);　→form.htmlへ引き継ぐModel名となる
        // 更新画面表示・更新処理実行のメソッドにおいても上記と同様のModel名とする

        /** 現在表示している工事契約を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        /** try {
            // 対象データがある場合は処理を進める
            // 対象データを取得
            BreakdownCd targetBreakdownCd = breakdownCdService.findByBcdId(idbBcdId);
            BreakdownCo targetBreakdownCo = breakdownCoService.findByBcoId(targetBreakdownCd.getBcdBcoId());
            Integer targetCcId = targetBreakdownCo.getBcoCcId();
            ConstructionContract targetConstructionContract = constructionContractService.findById(targetCcId);
            // 登録画面のform.htmlに引き継ぐべきパラメータをFormに格納
            form.setConstructionContract(targetConstructionContract);
            form.setCategoryOutline(targetBreakdownCd.getCategoryOutline());
            form.setCategoryDetail(targetBreakdownCd.getCategoryDetail());
            form.setBreakdownCd(targetBreakdownCd);
            form.setIdbBcdId(idbBcdId);
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/information-db/" + idbBcdId + "/specify";
        }*/

        form.setBcsBcdId(bcsBcdId);

        /** 内訳情報区分設定Mapを取得 */
        Map<String, Integer> categorySubjectMap = categorySubjectService.getCategorySubjectMap();
        // Modelに格納
        model.addAttribute("categorySubjectMap", categorySubjectMap);

        /** 登録画面へ遷移 */
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "breakdown-cs/form";

    }












}