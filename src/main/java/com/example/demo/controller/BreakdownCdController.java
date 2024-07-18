package com.example.demo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entity.BreakdownCd;
import com.example.demo.entity.BreakdownCo;
import com.example.demo.entity.CategoryOutline;
import com.example.demo.entity.ConstructionContract;
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

        /** ローカルフィールド定義、及び、初期化 */
        Long longDirectConstructionPrice = null;     // breakdown_coテーブルより取得した各種目の直接工事費
        Long longSumDirectConstructionPrice = null;  // breakdown_cdテーブルより取得した各種目の直接工事費

        /** 現在表示している内訳頭紙の「建築」の工事費をbreakdown_coテーブルより取得 */
        // 対象データを取得
        List<BreakdownCd> targetList = service.findAllById(bcdBcoId);
        // 工事契約を取得（先程はtry-catchで対応したが、今回は必ず存在するデータを取得することになるためtry-catchは省略）
        Integer ccId = targetList.get(0).getConstructionContract().getCcId();
        // 内訳頭紙区分を取得（先程はtry-catchで対応したが、今回は必ず存在するデータを取得することになるためtry-catchは省略）
        Integer coId = targetList.get(0).getCategoryOutline().getCoId();
        // 金額が入力されていない場合NullPointerExceptionを吐くのでtry-catchで対応
        try {
            BreakdownCo directConstructionPrice = breakdownCoservice.priceFindById(ccId, coId);
            longDirectConstructionPrice = directConstructionPrice.getBcoPrice();

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
        // Modelに格納
        model.addAttribute("breakdownCd", service.findAllById(bcdBcoId));
        // 一覧画面へ遷移（アドレス指定）
        return "breakdown-cd/specify";

    }
}