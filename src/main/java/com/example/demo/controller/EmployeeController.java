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

@Controller
@RequestMapping("/employee")
@RequiredArgsConstructor
public class EmployeeController {

    /** DI */
    private final EmployeeService service;

    /** 全件取得 */
    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("employee", service.findAll());
        return "employee/list";
    }

    /**　1件取得 */
    @GetMapping("detail/{code}")
    public String detail(@PathVariable("code") String code, Model model,
            RedirectAttributes attributes) {
        // 対象データを取得
        Employee employee = service.findByCode(code);
        if (employee != null) {
            // 対象データがある場合はモデルに格納
            model.addAttribute("employee", service.findByCode(code));
            return "employee/detail";
        } else {
            // 対象データがない場合はフラッシュメッセージを設定
            attributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト
            return "redirect:/employee/list";
        }
    }

    /** 登録画面表示　*/
    @GetMapping("/create")
    public String create(@ModelAttribute EmployeeForm form) {
        // @ModelAttributeの引数省略型を利用しているため、下記のように、Model名はクラス名のローワーキャメルケースとなる
        // model.addAttribute("employeeForm", form);　→View（HTML）へ引き継ぐModel名となる
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        return "employee/form";
    }

    /** 登録処理実行 */
    @PostMapping("/add")
    public String add(@Validated EmployeeForm form, BindingResult bindingRusult,
            RedirectAttributes attributes, Model model) {
        // Validation（ErrorKindsクラスによる社員番号の重複チェック）
        Employee target = service.findByCode(form.getCode());
        if (target != null) {
            // 対象データが既にあるため登録画面へ遷移してエラー内容を表示させる
            form.setIsNew(true);
            model.addAttribute(ErrorMessage.getErrorName(ErrorKinds.DUPLICATE_ERROR),
                    ErrorMessage.getErrorValue(ErrorKinds.DUPLICATE_ERROR));
            return "employee/form";
        }
        // Validation（Entityクラスによる入力チェック）
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため登録画面へ遷移してエラー内容を表示させる
            form.setIsNew(true);
            return "employee/form";
        }
        // Entityへの変換
        Employee entity = EmployeeHelper.convertEntity(form);
        // 登録実行
        service.insert(entity);
        // フラッシュメッセージ
        attributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン
        return "redirect:/employee/list";
    }

    /** 更新画面表示 */
    @GetMapping("/edit/{code}")
    public String edit(@PathVariable("code") String code, Model model,
            RedirectAttributes attributes) {
        // 対象データを取得
        Employee target = service.findByCode(code);
        if (target != null) {
            // 対象データがある場合はFormへの変換（「更新画面としてform.htmlが実行されるよう設定」含む）
            EmployeeForm form = EmployeeHelper.convertForm(target);
            // モデルに格納
            //　登録画面表示の@ModelAttribute引数省略型に合せ、Model名はFormクラス名のローワーキャメルケースとする
            model.addAttribute("employeeForm", form);
            return "employee/form";
        } else {
            // 対象データがない場合はフラッシュメッセージを設定
            attributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト
            return "redirect:/employee/list";
        }
    }

    /**　更新処理実行 */
    @PostMapping("/revice")
    public String revice(@Validated EmployeeForm form,  BindingResult bindingRusult,
            RedirectAttributes attributes) {
        // Validation（Entityクラスによる入力チェック）
        if (bindingRusult.hasErrors()) {
            // 入力チェックにエラーがあるため更新画面へ遷移してエラー内容を表示させる
            form.setIsNew(false);
            return "employee/form";
        }
        // エンティティへの変換
        Employee employee = EmployeeHelper.convertEntity(form);
        // 更新処理
        service.update(employee);
        // フラッシュメッセージ
        attributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン
        return "redirect:/employee/list";
    }

    /** 削除処理実行 */
    @PostMapping("/remove/{code}")
    public String remove(@PathVariable("code") String code, RedirectAttributes attributes) {
        // 削除処理
        service.delete(code);
        // フラッシュメッセージ
        attributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン
        return "redirect:/employee/list";
    }

}