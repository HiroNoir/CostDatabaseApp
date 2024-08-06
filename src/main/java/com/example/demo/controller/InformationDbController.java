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

        /** 現在表示している工事契約、内訳頭紙区分、内訳頭紙金額を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが存在しない場合IndexOutOfBoundsExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // 対象データを取得
            BreakdownCd breakdownCd = breakdownCdService.findByBcdId(idbBcdId);
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

        /** 特定画面へ遷移 */
        // 特定画面へ引き継ぐデータをModelに格納
        model.addAttribute("idbBcdId", idbBcdId);
        // Modelに格納
        model.addAttribute("informationDb", service.findAllById(idbBcdId));
        // 一覧画面へ遷移（アドレス指定）
        return "information-db/specify";

    }

    /**　【一件取得】 */
    @GetMapping("/{id1}/{id2}/detail")
    public String detail(@PathVariable("id1") Integer idbId,
                         @PathVariable("id2") Integer idbBcdId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        InformationDb targetInformationDb = service.findById(idbId, idbBcdId);
        // 対象データの有無確認
        if (targetInformationDb != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("informationDb", service.findById(idbId, idbBcdId));
            // 詳細画面へ遷移（アドレス指定）
            return "information-db/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
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
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "information-db/form";

    }

    /** 【登録処理実行】 */
    // ▲未実装

    /** 【更新画面表示】 */
    @GetMapping("/{id1}/{id2}/edit")
    @PreAuthorize("hasAuthority('EDITOR')")
    public String edit(@PathVariable("id1") Integer idbId,
                       @PathVariable("id2") Integer idbBcdId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 更新処理実行時入力チェックからのエラーメッセージ表示処理　*/
        // idがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(idbId == null) {
            // 更新画面へ遷移（アドレス指定）
            return "information-db/form";
        }

        /** 更新画面へ遷移 */
        // 更新画面へ遷移　その1で、idがnullでない場合は新規で更新画面へ遷移する
        // 更新画面への遷移はGETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        InformationDb targetInformationDb = service.findById(idbId, idbBcdId);
        // 対象データの有無確認
        if (targetInformationDb != null) {
            // 対象データがある場合は処理を進める
            // EntityからFormへ変換
            InformationDbForm form = InformationDbHelper.convertForm(targetInformationDb);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("informationDbForm", form);
            // 更新画面のform.htmlに引き継ぐべきパラメータをFormに格納
            form.setInformationItem(targetInformationDb.getInformationItem());
            form.setIdbBcdId(idbBcdId);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 更新画面へ遷移（アドレス指定）
            return "information-db/form";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/information-db/" + idbBcdId +"/specify";
        }

    }

    /**　【更新処理実行】 */
    // ▲未実装

    /** 【削除処理実行】 */
    // ▲未実装

}