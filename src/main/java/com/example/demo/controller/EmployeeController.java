package com.example.demo.controller;

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
import com.example.demo.entity.Employee;
import com.example.demo.form.EmployeeForm;
import com.example.demo.helper.EmployeeHelper;
import com.example.demo.service.EmployeeService;

import lombok.RequiredArgsConstructor;

/**
* 従業員コントローラークラス
*/
@Controller
@RequestMapping("/employee")
@RequiredArgsConstructor
public class EmployeeController {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final EmployeeService service;

    /** 【全件取得】 */
    @GetMapping("/list")
    public String list(Model model) {

        /** 一覧画面へ遷移 */
        // Modelに格納
        model.addAttribute("employee", service.findAll());
        // 一覧画面へ遷移（アドレス指定）
        return "employee/list";

    }

    /**　【1件取得】 */
    @GetMapping("/{code}/detail")
    public String detail(@PathVariable("code") String code, Model model,
            RedirectAttributes redirectAttributes) {

        /** 詳細画面へ遷移 */
        // GETメソッドでcode入力可能のため、URLでcodeを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        Employee target = service.findByCode(code);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // Modelに格納
            model.addAttribute("employee", service.findByCode(code));
            // 詳細画面へ遷移（アドレス指定）
            return "employee/detail";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            //　エラーのフラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/employee/list";
        }

    }

    /** 【登録画面表示】　*/
    @GetMapping("/create")
    public String create(@ModelAttribute EmployeeForm form) {

        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("employeeForm", form);　→form.htmlへ引き継ぐModel名となる
        // 更新画面表示・更新処理実行のメソッドにおいても上記と同様のModel名とする

        /** 登録画面へ遷移 */
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        // 登録画面へ遷移（アドレス指定）
        return "employee/form";

    }

    /** 【登録処理実行】 */
    @PostMapping("/add")
    public String add(@Validated EmployeeForm form, BindingResult bindingRusult,
            RedirectAttributes redirectAttributes, Model model) {

        /** バリデーション */
        // ErrorKindsクラスによる社員番号の重複チェック
        // 対象データを取得
        Employee target = service.findByCode(form.getCode());
        // 対象データの有無確認
        if (target != null) {
            // 対象データが既にあるため登録画面へ遷移してエラー内容を表示させる
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(ErrorKinds.DUPLICATE_ERROR),
                    ErrorMessage.getErrorValue(ErrorKinds.DUPLICATE_ERROR));
            // form.setIsNew(true);
            // 登録画面へ遷移（アドレス指定）　※アドレス指定の場合は上記「form.setIsNew(true);」を有効にする
            // return "employee/form";
            // 登録画面へ遷移（メソッド指定）
            return create(form);
        }

        /** バリデーション　*/
        // Entityクラスによる入力チェック
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            // form.setIsNew(true);
            // 登録画面へ遷移（アドレス指定）　※アドレス指定の場合は上記「form.setIsNew(true);」を有効にする
            // return "employee/form";
            // 登録画面へ遷移（メソッド指定）
            return create(form);
        }

        /** 登録処理実行 */
        // FormからEntityへ変換
        Employee entity = EmployeeHelper.convertEntity(form);
        // 登録実行
        service.insert(entity);
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/employee/list";

    }

    /** 【更新画面表示】 */
    @GetMapping("/{code}/edit")
    public String edit(@PathVariable("code") String code, Model model,
            RedirectAttributes redirectAttributes) {

        /** バリデーション　*/
        // codeがnullの場合は更新処理実行時の入力チェックでひっかかったためもう一度更新画面へ遷移する
        if(code == null) {
            // 更新画面へ遷移（アドレス指定）
            return "employee/form";
        }

        /** 更新画面へ遷移 */
        // GETメソッドでcode入力可能のため、URLでcodeを直入力された場合の、対象データの有無チェックを行う
        // 対象データを取得
        Employee target = service.findByCode(code);
        // 対象データの有無確認
        if (target != null) {
            // 対象データがある場合は処理を進める
            // EntityからFormへ変換
            EmployeeForm form = EmployeeHelper.convertForm(target);
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("employeeForm", form);
            // 更新画面としてform.htmlが実行されるよう設定
            form.setIsNew(false);
            // 更新画面へ遷移（アドレス指定）
            return "employee/form";
        } else {
            // 対象データがない場合は一覧画面へ戻る
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            redirectAttributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト（アドレス指定）
            return "redirect:/employee/list";
        }

    }

    /**　【更新処理実行】 */
    @PostMapping("/{code}/revice")
    public String revice(@PathVariable("code") String code, Model model,
            @Validated EmployeeForm form, BindingResult bindingRusult,
            RedirectAttributes redirectAttributes) {

        /** バリデーション　*/
        // Entityクラスによる入力チェック
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため更新画面へ遷移してエラー内容を表示させる
            // Modelに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("employeeForm", form);
            // form.setIsNew(false);
            // 登録画面へ遷移（アドレス指定）　※アドレス指定の場合は上記「form.setIsNew(false);」を有効にする
            // return "employee/form";
            // 更新画面へ遷移（メソッド指定）
            return edit(null, model, redirectAttributes);
        }

        /** 更新処理実行 */
        // FormからEntityへ変換
        Employee target = EmployeeHelper.convertEntity(form);
        // 更新処理
        service.update(target);
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/employee/list";

    }

    /** 【削除処理実行】 */
    @PostMapping("/{code}/remove")
    public String remove(@PathVariable("code") String code, Model model,
           RedirectAttributes redirectAttributes) {

        /** 削除処理実行 */
        // 削除処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.delete(code);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            model.addAttribute("employeeForm", service.findByCode(code));
            // エラーのフラッシュメッセージをRedirectAttributesに格納
            //　※リダイレクトではないためフラッシュメッセージの表示はされなかった。上下のメッセージは今後削除予定▲未対応
            // redirectAttributes.addFlashAttribute("errorMessage", "データが削除できませんでした");
            // 詳細画面へ遷移（メソッド指定）
            return detail(code, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/employee/list";

    }

}