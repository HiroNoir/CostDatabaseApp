package com.example.demo.controller;

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
import com.example.demo.entity.Employee;
import com.example.demo.form.EmployeeForm;
import com.example.demo.helper.EmployeeHelper;
import com.example.demo.service.EmployeeService;
import com.example.demo.service.impl.LoginUserDetails;

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
    public String detail(@PathVariable("code") String code,
            Model model, RedirectAttributes redirectAttributes) {

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
            Model model, RedirectAttributes redirectAttributes) {

        /** パスワード空白チェック
         * エンティティ側の入力チェックでも実装は行えるが、更新の方でパスワードが空白でもチェックエラーを出さずに
         * 更新出来る仕様となっているため上記を考慮した場合に別でエラーメッセージを出す方法が簡単だと判断
         */
        if ("".equals(form.getPassword())) {
            // パスワードが空白であるため登録画面へ遷移してエラー内容を表示させる
            model.addAttribute(ErrorMessage.getErrorName(ErrorKinds.BLANK_ERROR),
                    ErrorMessage.getErrorValue(ErrorKinds.BLANK_ERROR));
            // 登録画面へ遷移（メソッド指定）
            return create(form);
        }

        /** Entityクラスによる入力チェック　*/
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            // form.setIsNew(true);
            // 登録画面へ遷移（アドレス指定）　※アドレス指定の場合は上記「form.setIsNew(true);」を有効にする
            // return "employee/form";
            // 登録画面へ遷移（メソッド指定）
            return create(form);
        }

        /** 登録処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormからEntityへ変換
        Employee entity = EmployeeHelper.convertEntity(form);
        // 登録処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.insert(entity);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ遷移（メソッド指定）
            return create(form);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/employee/list";

    }

    /** 【更新画面表示】 */
    @GetMapping("/{code}/edit")
    public String edit(@PathVariable("code") String code,
            Model model, RedirectAttributes redirectAttributes) {

        /** 更新画面へ遷移　その1　*/
        // codeがnullの場合は更新処理実行時の入力チェックでひっかかったため再度更新画面へ遷移する
        if(code == null) {
            // 更新画面へ遷移（アドレス指定）
            return "employee/form";
        }

        /** 更新画面へ遷移　その2 */
        // 更新画面へ遷移　その1で、codeがnullでない場合は新規で更新画面へ遷移する
        // 更新画面への遷移はGETメソッドでcode入力可能のため、URLでcodeを直入力された場合の、対象データの有無チェックを行う
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
    public String revice(@PathVariable("code") String code,
            @Validated EmployeeForm form, BindingResult bindingRusult,
            Model model, RedirectAttributes redirectAttributes) {

        /** Entityクラスによる入力チェック　*/
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

        /** 更新処理実行（ErrorKindsクラスによる入力チェック共） */
        // FormからEntityへ変換
        Employee target = EmployeeHelper.convertEntity(form);
        // 更新処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.update(target);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 更新画面へ引き継ぐデータをModelに格納
            model.addAttribute("employeeForm", service.findByCode(code));
            // 更新画面へ遷移（メソッド指定）
            return edit(code, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/employee/list";

    }

    /** 【削除処理実行】 */
    @PostMapping("/{code}/remove")
    public String remove(@PathVariable("code") String code,
            @AuthenticationPrincipal LoginUserDetails loginUserDetails,
            Model model, RedirectAttributes redirectAttributes) {

        /** 削除処理実行（ErrorKindsクラスによる入力チェック共） */
        // 削除処理をしてErrorKindsクラスで定義された種別の結果を受け取る
        ErrorKinds result = service.delete(code, loginUserDetails);
        // ErrorMessageクラスで定義されたエラーが含まれていれば詳細画面に遷移してエラーメッセージを表示する
        if (ErrorMessage.contains(result)) {
            // エラーメッセージをModelに格納
            model.addAttribute(ErrorMessage.getErrorName(result),
                               ErrorMessage.getErrorValue(result));
            // 詳細画面へ引き継ぐデータをModelに格納
            model.addAttribute("employeeForm", service.findByCode(code));
            // 詳細画面へ遷移（メソッド指定）
            return detail(code, model, redirectAttributes);
        }
        // フラッシュメッセージをRedirectAttributesに格納し一覧画面へ戻る
        redirectAttributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン：一覧画面へリダイレクト（アドレス指定）
        return "redirect:/employee/list";

    }

}