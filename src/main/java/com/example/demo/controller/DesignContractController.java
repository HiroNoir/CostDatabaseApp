package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.constraints.ErrorMessage;
import com.example.demo.entity.DesignContract;
import com.example.demo.service.DesignContractService;

import lombok.RequiredArgsConstructor;

/**
* 設計契約コントローラークラス
*/
@Controller
@RequestMapping("/design-contract")
@RequiredArgsConstructor
public class DesignContractController {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final DesignContractService service;

    /** 【全件取得】 */
    @GetMapping("/list")
    public String list(Model model) {

        /** 一覧画面へ遷移 */
        // Modelに格納
        model.addAttribute("designContract", service.findAll());
        // 一覧画面へ遷移（アドレス指定）
        return "design-contract/list";

    }

    /**　【1件取得】 */
    @GetMapping("/{id}/detail")
    public String detail(@PathVariable("id") Integer dcID,
            Model model, RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでid入力可能のため、URLでidを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        DesignContract target = service.findById(dcID);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("designContract", service.findById(dcID));
            // 詳細画面へ遷移（アドレス指定）
            return "design-contract/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/design-contract/list";
        }

    }

    /** 【削除処理実行】 */
    @PostMapping("/{id}/remove")
    public String remove(@PathVariable("id") Integer dcId,
            Model model, RedirectAttributes redirectAttributes) {

        /** 削除処理実行（ErrorKindsクラスによる入力チェック共） */
        // 削除処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.delete(dcId);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ引き継ぐデータをModelに格納
            model.addAttribute("designContractForm", service.findById(dcId));
            // 詳細画面へ遷移（メソッド指定）
            return detail(dcId, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/design-contract/list";

    }

}