package com.example.demo.controller;

import java.util.Map;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.constraints.ErrorMessage;
import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.entity.BreakdownCs;
import com.example.demo.entity.CategoryDetail;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.form.BreakdownCsForm;
import com.example.demo.helper.BreakdownCsHelper;
import com.example.demo.service.BreakdownCdService;
import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.BreakdownCsService;
import com.example.demo.service.CategoryDetailService;
import com.example.demo.service.CategoryOutlineService;
import com.example.demo.service.CategorySubjectService;
import com.example.demo.service.ConstructionContractService;
import com.example.demo.service.impl.LoginUserDetails;

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

        /** ローカルフィールド定義、及び、初期化 */
        Long longDirectConstructionPrice = null;     // breakdown_cdテーブルより取得した各種目の直接工事費
        Long longSumDirectConstructionPrice = null;  // breakdown_cdテーブルより取得した各種目の直接工事費

        /** 現在表示している内訳種目の各金額をbreakdown_cdテーブルより取得 */
        // 対象データを取得
        BreakdownCd directConstructionPrice = breakdownCdService.findByBcdId(bcsBcdId);
        // 対象データの有無確認
        if (directConstructionPrice != null) {
            // 対象データがある場合
            // ローカルフィールドに格納
            longDirectConstructionPrice = directConstructionPrice.getBcdPrice();
        } else {
            // 対象データがない場合
            //Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longDirectConstructionPrice = 0L;
        }
        // Modelに格納
        model.addAttribute("longTargetPrice", longDirectConstructionPrice);

        /** 「内訳種目の直接工事費－内訳科目の合計金額」の検算結果を取得 */
        // 対象データを取得
        BreakdownCs sumDirectConstructionPrice = service.findSumById(bcsBcdId);
        // 対象データの有無確認
        if (sumDirectConstructionPrice != null) {
            // 対象データがある場合
            // ローカルフィールドに格納
            longSumDirectConstructionPrice = sumDirectConstructionPrice.getSumBcsPrice();
        } else {
            // 対象データがない場合
            //Nullの場合はゼロを代入して、以下の計算でエラーが出ない様にする
            longSumDirectConstructionPrice = 0L;
        }
        // 上記合計金額より直接工事費を減算して差額を算出
        Long defDirectConstructionPrice = longSumDirectConstructionPrice - longDirectConstructionPrice;
        // Modelに格納
        model.addAttribute("defDirectConstructionPrice", defDirectConstructionPrice);

        /** 特定画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd targetBreakdownCd = breakdownCdService.findByBcdId(bcsBcdId);
        if (targetBreakdownCd != null) {
            // 対象データがある場合
            // 工事契約と内訳頭紙区分と内訳種目区分を取得（これらを呼びたすために内訳頭紙を最初に取得）
            BreakdownCo breakdownCo = breakdownCoService.findByBcoId(targetBreakdownCd.getBcdBcoId());
            ConstructionContract constructionContract = constructionContractService.findById(breakdownCo.getBcoCcId());
            CategoryOutline categoryOutline = categoryOutlineService.findById(breakdownCo.getBcoCoId());
            CategoryDetail categoryDetail = categoryDetailService.findById(targetBreakdownCd.getBcdCdId());
            // Modelに格納
            model.addAttribute("projectName", constructionContract.getProjectName());
            model.addAttribute("coTypeName", categoryOutline.getCoTypeName());
            model.addAttribute("cdTypeName", categoryDetail.getCdTypeName());
            model.addAttribute("bcdTypeName", targetBreakdownCd.getBcdTypeName());
            model.addAttribute("breakdownCs", service.findAllById(bcsBcdId));
            model.addAttribute("bcsBcdId", bcsBcdId);
            model.addAttribute("bcdBcoId", targetBreakdownCd.getBcdBcoId());
            // 画面遷移（アドレス指定）
            return "breakdown-cs/specify";
        } else {
            // 対象データがない場合
            //　エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

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
            // 対象データがある場
            // Modelに格納
            model.addAttribute("breakdownCs", service.findById(bcsBcdId, bcsCsId));
            // 画面遷移（アドレス指定）
            return "breakdown-cs/detail";
        } else {
            // 対象データがない場合
            //　エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
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

        /** 内訳情報区分設定Mapを取得 */
        Map<String, Integer> categorySubjectMap = categorySubjectService.getCategorySubjectMap();
        // Modelに格納
        model.addAttribute("categorySubjectMap", categorySubjectMap);

        /** 登録画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd targetBreakdownCd = breakdownCdService.findByBcdId(bcsBcdId);
        if (targetBreakdownCd != null) {
            // 対象データがある場合
            // 工事契約を取得（これらを呼びたすために内訳頭紙を最初に取得）
            BreakdownCo breakdownCo = breakdownCoService.findByBcoId(targetBreakdownCd.getBcdBcoId());
            ConstructionContract constructionContract = constructionContractService.findById(breakdownCo.getBcoCcId());
            // 登録画面のform.htmlに引き継ぐべきパラメータをformに格納
            form.setConstructionContract(constructionContract);
            form.setCategoryOutline(targetBreakdownCd.getCategoryOutline());
            form.setCategoryDetail(targetBreakdownCd.getCategoryDetail());
            form.setBreakdownCd(targetBreakdownCd);
            form.setBcsBcdId(bcsBcdId);
            // 登録画面としてform.htmlが実行されるよう設定
            form.setIsNew(true);
            // 画面遷移（アドレス指定）
            return "breakdown-cs/form";
        } else {
            // 対象データがない場合
            //　エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
            return "redirect:/breakdown-cs/" + bcsBcdId + "/specify";
        }

    }

    /** 【登録処理実行】 */
    @PostMapping("/add")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String add(@Validated BreakdownCsForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** 引き継ぐべきパラメータをformより取得 */
        Integer bcsBcdId = form.getBcsBcdId();

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            // 画面遷移（メソッド指定）
            return create(bcsBcdId, form, model, redirectAttributes);
        }

        /** 登録処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormクラスからEntityクラスへ変換
        BreakdownCs entity = BreakdownCsHelper.convertEntity(form);
        // 登録処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.insert(entity, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 画面遷移（メソッド指定）
            return create(bcsBcdId, form, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納
        redirectAttributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン：リダイレクト（アドレス指定）
        return "redirect:/breakdown-cs/" + bcsBcdId + "/specify";
    }

    /** 【更新画面表示】 */
    @GetMapping("/{id1}/{id2}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id1") Integer bcsBcdId,
                       @PathVariable("id2") Integer bcsCsId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 更新処理実行時入力チェックからのエラーメッセージ表示処理　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(bcsBcdId == null) {
            // 画面遷移（アドレス指定）
            return "breakdown-cs/form";
        }

        /** 更新画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCs targetBreakdownCs = service.findById(bcsBcdId, bcsCsId);
        // 対象データの有無確認
        if (targetBreakdownCs != null) {
            // 対象データがある場合
            // EntityクラスからFormクラスへ変換
            BreakdownCsForm form = BreakdownCsHelper.convertForm(targetBreakdownCs);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("breakdownCsForm", form);
            // 更新画面のform.htmlに引き継ぐべきパラメータをFormに格納
            form.setConstructionContract(targetBreakdownCs.getConstructionContract());
            form.setCategoryOutline(targetBreakdownCs.getCategoryOutline());
            form.setCategoryDetail(targetBreakdownCs.getCategoryDetail());
            form.setBreakdownCd(targetBreakdownCs.getBreakdownCd());
            form.setCategorySubject(targetBreakdownCs.getCategorySubject());
            form.setBcsCsId(bcsCsId);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 画面遷移（アドレス指定）
            return "breakdown-cs/form";
        } else {
            // 対象データがない場合
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
            return "redirect:/breakdown-cs/" + bcsBcdId +"/specify";
        }

    }

    /**　【更新処理実行】 */
    @PostMapping("/{id1}/{id2}/revice")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String revice(@PathVariable("id1") Integer bcsBcdId,
                         @PathVariable("id2") Integer bcsCsId,
            @Validated BreakdownCsForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため更新画面へ遷移してエラー内容を表示させる
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("breakdownCsForm", form);
            // 画面遷移（メソッド指定）
            return edit(null, bcsCsId, model, redirectAttributes);
        }

        /** 更新処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormクラスからEntityクラスへ変換
        BreakdownCs targetBreakdownCs = BreakdownCsHelper.convertEntity(form);
        // 更新処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.update(targetBreakdownCs, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 更新画面へ引き継ぐデータをModelに格納
            model.addAttribute("breakdownCsForm", service.findById(bcsBcdId, bcsCsId));
            // 画面遷移（メソッド指定）
            return edit(bcsBcdId, bcsCsId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納
        redirectAttributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン：リダイレクト（アドレス指定）
        return "redirect:/breakdown-cs/" + bcsBcdId +"/specify";

    }

    /** 【削除処理実行】 */
    @PostMapping("/{id1}/{id2}/remove")
    @PreAuthorize("hasAuthority('ADMIN')")
    public String remove(@PathVariable("id1") Integer bcsBcdId,
                         @PathVariable("id2") Integer bcsCsId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 削除処理実行（ErrorKindsクラスによる入力チェック共） */
        // 削除処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.delete(bcsBcdId, bcsCsId);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ引き継ぐデータをModelに格納
            model.addAttribute("breakdownCsForm", service.findById(bcsBcdId, bcsCsId));
            // 画面遷移（メソッド指定）
            return edit(bcsBcdId, bcsCsId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納
        redirectAttributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン：リダイレクト（アドレス指定）
        return "redirect:/breakdown-cs/" + bcsBcdId +"/specify";

    }

}