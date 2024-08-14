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
import com.example.demo.entity.CategoryDetail;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.entity.InformationDb;
import com.example.demo.form.InformationDbForm;
import com.example.demo.helper.InformationDbHelper;
import com.example.demo.service.BreakdownCdService;
import com.example.demo.service.BreakdownCoService;
import com.example.demo.service.CategoryDetailService;
import com.example.demo.service.CategoryOutlineService;
import com.example.demo.service.ConstructionContractService;
import com.example.demo.service.InformationDbService;
import com.example.demo.service.InformationItemService;
import com.example.demo.service.impl.LoginUserDetails;

import lombok.RequiredArgsConstructor;

/**
* 内訳情報コントローラークラス
*/
@Controller
@RequestMapping("/information-db")
@RequiredArgsConstructor
public class InformationDbController {

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
    private final InformationDbService service;
    // 他テーブルのデータを取得するため、他テーブルを扱うサービインターフェスをDI
    private final ConstructionContractService constructionContractService;
    private final CategoryOutlineService categoryOutlineService;
    private final BreakdownCoService breakdownCoService;
    private final CategoryDetailService categoryDetailService;
    private final InformationItemService informationItemService;
    private final BreakdownCdService breakdownCdService;

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer idbBcdId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 特定画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd targetBreakdownCd = breakdownCdService.findByBcdId(idbBcdId);
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
            model.addAttribute("informationDb", service.findAllById(idbBcdId));
            model.addAttribute("bcdId", targetBreakdownCd.getBcdId());
            model.addAttribute("bcdBcoId", targetBreakdownCd.getBcdBcoId());
            // model.addAttribute("idbBcdId", idbBcdId);
            // 画面遷移（アドレス指定）
            return "information-db/specify";
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
    public String detail(@PathVariable("id1") Integer idbBcdId,
                         @PathVariable("id2") Integer idbIiId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        InformationDb targetInformationDb = service.findById(idbBcdId, idbIiId);
        // 対象データの有無確認
        if (targetInformationDb != null) {
            // 対象データがある場合
            // Modelに格納
            model.addAttribute("informationDb", service.findById(idbBcdId, idbIiId));
            // 画面遷移（アドレス指定）
            return "information-db/detail";
        } else {
            // 対象データがない場合
            //　エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
            return "redirect:/information-db/" + idbBcdId + "/specify";
        }

    }

    /** 【登録画面表示】　*/
    @GetMapping("/{id}/create")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String create(@PathVariable("id") Integer idbBcdId,
            @ModelAttribute InformationDbForm form,
            Model model, RedirectAttributes redirectAttributes) {

        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("informationDbForm", form);　→form.htmlへ引き継ぐModel名となる
        // 更新画面表示・更新処理実行のメソッドにおいても上記と同様のModel名とする

        /** 内訳情報区分設定Mapを取得 */
        Map<String, Integer> informationItemlMap = informationItemService.getInformationItemMap();
        // Modelに格納
        model.addAttribute("informationItemlMap", informationItemlMap);

        /** 登録画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        BreakdownCd targetBreakdownCd = breakdownCdService.findByBcdId(idbBcdId);
        if (targetBreakdownCd != null) {
            // 対象データがある場合
            // 工事契約を取得（これを呼びたすために内訳頭紙を最初に取得）
            BreakdownCo breakdownCo = breakdownCoService.findByBcoId(targetBreakdownCd.getBcdBcoId());
            ConstructionContract constructionContract = constructionContractService.findById(breakdownCo.getBcoCcId());
            // form.htmlに引き継ぐべきパラメータをformに格納
            form.setConstructionContract(constructionContract);
            form.setCategoryOutline(targetBreakdownCd.getCategoryOutline());
            form.setCategoryDetail(targetBreakdownCd.getCategoryDetail());
            form.setBreakdownCd(targetBreakdownCd);
            form.setIdbBcdId(idbBcdId);
            // 登録画面としてform.htmlが実行されるよう設定
            form.setIsNew(true);
            // 画面遷移（アドレス指定）
            return "information-db/form";
        } else {
            // 対象データがない場合
            //　エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
            return "redirect:/information-db/" + idbBcdId + "/specify";
        }

    }

    /** 【登録処理実行】 */
    @PostMapping("/add")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String add(@Validated InformationDbForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** 引き継ぐべきパラメータをformより取得 */
        Integer idbBcdId = form.getIdbBcdId();

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            // 登録画面へ遷移（メソッド指定）
            return create(idbBcdId, form, model, redirectAttributes);
        }

        /** 登録処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormクラスからEntityクラスへ変換
        InformationDb entity = InformationDbHelper.convertEntity(form);
        // 登録処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.insert(entity, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 画面遷移（メソッド指定）
            return create(idbBcdId, form, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納
        redirectAttributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン：リダイレクト（アドレス指定）
        return "redirect:/information-db/" + idbBcdId + "/specify";
    }

    /** 【更新画面表示】 */
    @GetMapping("/{id1}/{id2}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id1") Integer idbBcdId,
                       @PathVariable("id2") Integer idbIiId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 更新処理実行時入力チェックからのエラーメッセージ表示処理　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(idbBcdId == null) {
            // 画面遷移（アドレス指定）
            return "information-db/form";
        }

        /** 更新画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        InformationDb targetInformationDb = service.findById(idbBcdId, idbIiId);
        // 対象データの有無確認
        if (targetInformationDb != null) {
            // 対象データがある場合
            // EntityクラスからFormクラスへ変換
            InformationDbForm form = InformationDbHelper.convertForm(targetInformationDb);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("informationDbForm", form);
            // form.htmlに引き継ぐべきパラメータをformに格納
            form.setConstructionContract(targetInformationDb.getConstructionContract());
            form.setCategoryOutline(targetInformationDb.getCategoryOutline());
            form.setCategoryDetail(targetInformationDb.getCategoryDetail());
            form.setBreakdownCd(targetInformationDb.getBreakdownCd());
            form.setInformationItem(targetInformationDb.getInformationItem());
            form.setIdbIiId(idbIiId);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 画面遷移（アドレス指定）
            return "information-db/form";
        } else {
            // 対象データがない場合
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト（アドレス指定）
            return "redirect:/information-db/" + idbBcdId +"/specify";
        }

    }

    /**　【更新処理実行】 */
    @PostMapping("/{id1}/{id2}/revice")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String revice(@PathVariable("id1") Integer idbBcdId,
                         @PathVariable("id2") Integer idbIiId,
            @Validated InformationDbForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails) {

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため更新画面へ遷移してエラー内容を表示させる
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("informationDbForm", form);
            // 画面遷移（メソッド指定）
            return edit(null, idbIiId, model, redirectAttributes);
        }

        /** 更新処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormクラスからEntityクラスへ変換
        InformationDb targetInformationDb = InformationDbHelper.convertEntity(form);
        // 更新処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.update(targetInformationDb, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 更新画面へ引き継ぐデータをModelに格納
            model.addAttribute("informationDbForm", service.findById(idbBcdId, idbIiId));
            // 画面遷移（メソッド指定）
            return edit(idbBcdId, idbIiId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納
        redirectAttributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン：リダイレクト（アドレス指定）
        return "redirect:/information-db/" + idbBcdId +"/specify";

    }

    /** 【削除処理実行】 */
    @PostMapping("/{id1}/{id2}/remove")
    @PreAuthorize("hasAuthority('ADMIN')")
    public String remove(@PathVariable("id1") Integer idbBcdId,
                         @PathVariable("id2") Integer idbIiId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 削除処理実行（ErrorKindsクラスによる入力チェック共） */
        // 削除処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.delete(idbBcdId, idbIiId);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ引き継ぐデータをModelに格納
            model.addAttribute("informationDbForm", service.findById(idbBcdId, idbIiId));
            // 画面遷移（メソッド指定）
            return edit(idbBcdId, idbIiId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納
        redirectAttributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン：リダイレクト（アドレス指定）
        return "redirect:/information-db/" + idbBcdId +"/specify";

    }

}