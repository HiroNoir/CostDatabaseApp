package com.example.demo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
import com.example.demo.service.BreakdownCdService;
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

    /** 【特定取得】 */
    @GetMapping("/{id}/specify")
    public String specify(@PathVariable("id") Integer bcdBcoId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 現在表示している工事契約を取得 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データが存在しない場合IndexOutOfBoundsExceptionを吐くのでtry-catchで対応
        try {
            // 対象データがある場合は処理を進める
            // 対象データを取得
            List<BreakdownCd> targetList = service.findAllById(bcdBcoId);
            // 工事契約を取得
            Integer ccId = targetList.get(0).getConstructionContract().getCcId();
            ConstructionContract targetCcId = constructionContractService.findById(ccId);
            // Modelに格納
            model.addAttribute("projectName", targetCcId.getProjectName());
            model.addAttribute("ccId", targetCcId.getCcId());
            // 内訳頭紙区分を取得
            Integer coId = targetList.get(0).getCategoryOutline().getCoId();
            CategoryOutline targetCoId = categoryOutlineService.findById(coId);
            // Modelに格納
            model.addAttribute("coIdTypeName", targetCoId.getTypeName());
            model.addAttribute("coId", targetCoId.getCoId());
        } catch (IndexOutOfBoundsException e) {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 特定画面へリダイレクト（アドレス指定）
            return "redirect:/construction-contract/list";
        }

        /** 特定画面へ遷移 */
        // Modelに格納
        model.addAttribute("breakdownCd", service.findAllById(bcdBcoId));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-cd/specify";

    }
}