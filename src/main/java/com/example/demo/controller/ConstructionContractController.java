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
import com.example.demo.entity.ConstructionContract;
import com.example.demo.form.ConstructionContractForm;
import com.example.demo.helper.ConstructionContractHelper;
import com.example.demo.service.ConstructionContractService;
import com.example.demo.service.DesignContractService;
import com.example.demo.service.EstimateTypeService;
import com.example.demo.service.impl.LoginUserDetails;

import lombok.RequiredArgsConstructor;

/**
* 設計契約コントローラークラス
*/
@Controller
@RequestMapping("/construction-contract")
@RequiredArgsConstructor
public class ConstructionContractController {

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
    private final ConstructionContractService service;
    // 他テーブルのデータを取得するため、他テーブルを扱うサービインターフェスをDI
    private final DesignContractService designContractService;
    private final EstimateTypeService estimateTypeService;

    /** 【全件取得】 */
    @GetMapping("/list")
    public String list(Model model) {

        /** 一覧画面へ遷移 */
        // Modelに格納
        model.addAttribute("constructionContract", service.findAll());
        // 一覧画面へ遷移（アドレス指定）
        return "construction-contract/list";

    }

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer ccDcId, Model model) {

        /** 現在表示している工事契約を取得 */
        String contractName = designContractService.findById(ccDcId).getContractName();
        model.addAttribute("contractName", contractName);

        /** 特定画面へ遷移 */
        // Modelに格納
        model.addAttribute("constructionContract", service.findAllById(ccDcId));
        // 一覧画面へ遷移（アドレス指定）
        return "construction-contract/specify";

    }

    /**　【1件取得】 */
    @GetMapping("/{id}/detail")
    public String detail(@PathVariable("id") Integer ccId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        ConstructionContract target = service.findById(ccId);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("constructionContract", service.findById(ccId));
            // 詳細画面へ遷移（アドレス指定）
            return "construction-contract/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

    }

    /** 【登録画面表示】　*/
    @GetMapping("/create")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String create(@ModelAttribute ConstructionContractForm form, Model model) {

        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("constructionContractForm", form);　→form.htmlへ引き継ぐModel名となる
        // 更新画面表示・更新処理実行のメソッドにおいても上記と同様のModel名とする

        /** 設計契約Mapを取得 */
        Map<String, Integer> designContractMap = designContractService.getDesignContractMap();
        // Modelに格納
        model.addAttribute("designContractMap", designContractMap);

        /** 内訳種別区分設定Mapを取得 */
        Map<String, Integer> estimateTypeMap = estimateTypeService.getEstimateTypeMap();
        // Modelに格納
        model.addAttribute("estimateTypeMap", estimateTypeMap);

        /** 登録画面へ遷移 */
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "construction-contract/form";

    }

    /** 【登録処理実行】 */
    @PostMapping("/add")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String add(@Validated ConstructionContractForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            // 登録画面へ遷移（メソッド指定）
            return create(form, model);
        }

        /** 登録処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormからEntityへ変換
        ConstructionContract entity = ConstructionContractHelper.convertEntity(form);
        // 登録処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.insert(entity, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ遷移（メソッド指定）
            return create(form, model);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/construction-contract/list";

    }

    /** 【更新画面表示】 */
    @GetMapping("/{id}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id") Integer ccId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 設計契約Mapを取得 */
        Map<String, Integer> designContractMap = designContractService.getDesignContractMap();
        // Modelに格納
        model.addAttribute("designContractMap", designContractMap);

        /** 内訳種別区分設定Mapを取得 */
        Map<String, Integer> estimateTypeMap = estimateTypeService.getEstimateTypeMap();
        // Modelに格納
        model.addAttribute("estimateTypeMap", estimateTypeMap);

        /** 更新画面へ遷移　その1　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(ccId == null) {
            // 更新画面へ遷移（アドレス指定）
            return "construction-contract/form";
        }

        /** 更新画面へ遷移　その2 */
        // 更新画面へ遷移　その1で、idがnullでない場合は新規で更新画面へ遷移する
        // 更新画面への遷移はGETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        ConstructionContract target = service.findById(ccId);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // EntityからFormへ変換
            ConstructionContractForm form = ConstructionContractHelper.convertForm(target);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("constructionContractForm", form);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 更新画面へ遷移（アドレス指定）
            return "construction-contract/form";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

    }

    /**　【更新処理実行】 */
    @PostMapping("/{id}/revice")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String revice(@PathVariable("id") Integer ccId,
            @Validated ConstructionContractForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため更新画面へ遷移してエラー内容を表示させる
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("constructionContractForm", form);
            // 更新画面へ遷移（メソッド指定）
            return edit(null, model, redirectAttributes);
        }

        /** 更新処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormからEntityへ変換
        ConstructionContract target = ConstructionContractHelper.convertEntity(form);
        // 更新処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.update(target, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 更新画面へ引き継ぐデータをModelに格納
            model.addAttribute("constructionContractForm", service.findById(ccId));
            // 更新画面へ遷移（メソッド指定）
            return edit(ccId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/construction-contract/list";

    }

    /** 【削除処理実行】 */
    @PostMapping("/{id}/remove")
    @PreAuthorize("hasAuthority('ADMIN')")
    public String remove(@PathVariable("id") Integer ccId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 削除処理実行（ErrorKindsクラスによる入力チェック共） */
        // 削除処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.delete(ccId);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ引き継ぐデータをModelに格納
            model.addAttribute("constructionContractForm", service.findById(ccId));
            // 詳細画面へ遷移（メソッド指定）
            return detail(ccId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが削除されました（論理削除）");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/construction-contract/list";

    }

}