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
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.form.BreakdownCdForm;
import com.example.demo.form.BreakdownCoForm;
import com.example.demo.helper.BreakdownCdHelper;
import com.example.demo.helper.BreakdownCoHelper;
import com.example.demo.service.BreakdownCdService;
import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.CategoryDetailService;
import com.example.demo.service.CategoryOutlineService;
import com.example.demo.service.ConstructionContractService;
import com.example.demo.service.PurposeDetailService;
import com.example.demo.service.PurposeOutlineService;
import com.example.demo.service.impl.LoginUserDetails;

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
    private final CategoryDetailService categoryDetailService;
    private final PurposeOutlineService purposeOutlineService;
    private final PurposeDetailService purposeDetailService;

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
            ConstructionContract targetConstructionContract = constructionContractService.findById(ccId);
            // Modelに格納
            model.addAttribute("projectName", targetConstructionContract.getProjectName());
            model.addAttribute("ccId", targetConstructionContract.getCcId());
            // 内訳頭紙区分を取得
            Integer coId = breakdownCo.getBcoCoId();
            CategoryOutline targetCategoryOutline = categoryOutlineService.findById(coId);
            // Modelに格納
            model.addAttribute("coIdTypeName", targetCategoryOutline.getCoTypeName());
            model.addAttribute("coId", targetCategoryOutline.getCoId());
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

        /** 内訳頭紙区分が建築、電気設備、機械設備、昇降機設備以外の場合は内訳種目入力不可として内訳頭紙へリダイレクト */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、入力対象となるかチェックを行う
        // 対象データを取得
        BreakdownCo breakdownCo = breakdownCoservice.findByBcoId(bcdBcoId);
        // 内訳頭紙区分を取得
        Integer coId = breakdownCo.getBcoCoId();
        System.out.println(coId);
        // 対象データの値によりリダイレクト
        if (coId != 1010 && coId != 1020 && coId != 1030 && coId != 1040) {
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "建築・電気設備・機械設備・昇降機設備以外には種目を登録できないため、内訳頭紙の画面へ遷移しました");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-co/" + bcdBcoId + "/specify";
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
    public String detail(@PathVariable("id1") Integer bcdId,
                         @PathVariable("id2") Integer bcdBcoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd targetBreakdownCd = service.findByBcdId(bcdId);
        // 対象データの有無確認
        if (targetBreakdownCd != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("breakdownCd", service.findByBcdId(bcdId));
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

        /** 現在表示している工事契約を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // 対象データを取得
            BreakdownCo targetBreakdownCo = breakdownCoservice.findByBcoId(bcdBcoId);
            Integer targetCcId = targetBreakdownCo.getBcoCcId();
            ConstructionContract targetConstructionContract = constructionContractService.findById(targetCcId);
            // 登録画面のform.htmlに引き継ぐべきパラメータをFormに格納
            form.setConstructionContract(targetConstructionContract);
            form.setCategoryOutline(targetBreakdownCo.getCategoryOutline());
            form.setBcdBcoId(bcdBcoId);
        } catch (NullPointerException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/breakdown-cd/" + bcdBcoId + "/specify";
        }

        /** 内訳種目区分設定Mapを取得 */
        Map<String, Integer> categoryDetailMap = categoryDetailService.getCategoryDetailMap();
        // Modelに格納
        model.addAttribute("categoryDetailMap", categoryDetailMap);

        /** 用途概略区分設定Mapを取得 */
        Map<String, Integer> purposeOutlineMap = purposeOutlineService.getPurposeOutlineMap();
        // Modelに格納
        model.addAttribute("purposeOutlineMap", purposeOutlineMap);

        /** 用途詳細区分設定Mapを取得 */
        Map<String, Integer> purposeDetailMap = purposeDetailService.getPurposeDetailMap();
        // Modelに格納
        model.addAttribute("purposeDetailMap", purposeDetailMap);

        /** 登録画面へ遷移 */
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "breakdown-cd/form";

    }

    /** 【登録処理実行】 */
    @PostMapping("/add")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String add(@Validated BreakdownCdForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            // 登録画面のメソッドに引き継ぐべきパラメータをformより取得
            Integer bcdBcoId = form.getBcdBcoId();
            // 登録画面へ遷移（メソッド指定）
            return create(bcdBcoId, form, model, redirectAttributes);
        }

        /** 登録処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormからEntityへ変換
        BreakdownCd entity = BreakdownCdHelper.convertEntity(form);
        // 登録処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.insert(entity, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 登録画面のメソッドに引き継ぐべきパラメータをformより取得
            Integer bcdBcoId = form.getBcdBcoId();
            // 詳細画面へ遷移（メソッド指定）
            return create(bcdBcoId, form, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン：特定画面へリダイレクト（アドレス指定）
        // 登録画面のメソッドに引き継ぐべきパラメータをformより取得
        Integer bcdBcoId = form.getBcdBcoId();
        return "redirect:/breakdown-cd/" + bcdBcoId + "/specify";

    }

    /** 【更新画面表示】 */
    @GetMapping("/{id1}/{id2}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id1") Integer bcdId,
                       @PathVariable("id2") Integer bcdBcoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 更新処理実行時入力チェックからのエラーメッセージ表示処理　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(bcdId == null) {
            // 更新画面へ遷移（アドレス指定）
            return "breakdown-cd/form";
        }

        /** 更新画面へ遷移 */
        // 更新画面へ遷移　その1で、idがnullでない場合は新規で更新画面へ遷移する
        // 更新画面への遷移はGETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd targetBreakdownCd = service.findByBcdId(bcdId);
        // 対象データの有無確認
        if (targetBreakdownCd != null) {
            // 対象データがある場合は処理を進める
            // EntityからFormへ変換
            BreakdownCdForm form = BreakdownCdHelper.convertForm(targetBreakdownCd);
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
    @PostMapping("/{id1}/{id2}/revice")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String revice(@PathVariable("id1") Integer bcdId,
                         @PathVariable("id2") Integer bcdBcoId,
            @Validated BreakdownCdForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため更新画面へ遷移してエラー内容を表示させる
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("breakdownCdForm", form);
            // 更新画面へ遷移（メソッド指定）
            return edit(null, bcdBcoId, model, redirectAttributes);
        }

        /** 更新処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormからEntityへ変換
        BreakdownCd targetBreakdownCd = BreakdownCdHelper.convertEntity(form);
        // 更新処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.update(targetBreakdownCd, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 更新画面へ引き継ぐデータをModelに格納
            model.addAttribute("breakdownCdForm", service.findByBcdId(bcdId));
            // 更新画面へ遷移（メソッド指定）
            return edit(bcdBcoId, bcdBcoId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン：特定画面へリダイレクト（アドレス指定）
        return "redirect:/breakdown-cd/" + bcdBcoId +"/specify";

    }

    /** 【削除処理実行】 */
    // ▲未実装

}