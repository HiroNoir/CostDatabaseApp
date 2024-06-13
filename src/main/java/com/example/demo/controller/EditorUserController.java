package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entity.EditorUser;
import com.example.demo.form.EditorUserForm;
import com.example.demo.helper.EditorUserHelper;
import com.example.demo.service.EditorUserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/editor_user")
@RequiredArgsConstructor
public class EditorUserController {

    /** DI */
    private final EditorUserService service;

    /** 全件取得 */
    @GetMapping
    public String list(Model model) {
        model.addAttribute("editor_user", service.findAll());
        return "editor_user/list";
    }

    /**　1件取得 */
    @GetMapping("/{code}")
    public String detail(@PathVariable("code") String code, Model model,
            RedirectAttributes attributes) {
        // 対象データを取得
        EditorUser editorUser = service.findByCode(code);
        if (editorUser != null) {
            // 対象データがある場合はモデルに格納
            model.addAttribute("editor_user", service.findByCode(code));
            return "editor_user/detail";
        } else {
            // 対象データがない場合はフラッシュメッセージを設定
            attributes.addFlashAttribute("errorMessage", "対象データがありません");
            // リダイレクト
            return "redirect:/editor_user";
        }
    }

    /** 登録画面表示　*/
    @GetMapping("/form")
    public String newToDo(@ModelAttribute("registerForm") EditorUserForm form) {
        // 登録画面としてform.htmlが実行されるよう設定
        form.setIsNew(true);
        return "editor_user/form";
    }

    /** 登録処理実行 */
    @PostMapping("/save")
    public String create(EditorUserForm form,
            RedirectAttributes attributes) {
        // Entityへの変換
        EditorUser entity = EditorUserHelper.convertEntity(form);
        // 登録実行
        service.insert(entity);
        // フラッシュメッセージ
        attributes.addFlashAttribute("message", "新しいデータが作成されました");
        // PRGパターン
        return "redirect:/editor_user";
    }

    /** 更新画面表示 */
    @GetMapping("/edit/{code}")
    public String edit(@PathVariable("code") String code, Model model,
            RedirectAttributes attributes) {
        // 対象データを取得
        EditorUser target = service.findByCode(code);
        if (target != null) {
            // 対象データがある場合はFormへの変換（「更新画面としてform.htmlが実行されるよう設定」含む）
            EditorUserForm form = EditorUserHelper.convertForm(target);
            // モデルに格納
            model.addAttribute("registerForm", form);
            return "editor_user/form";
        } else {
            // 対象データがない場合はフラッシュメッセージを設定
            attributes.addFlashAttribute("errorMessage", "対象データがありません");
            // 一覧画面へリダイレクト
            return "redirect:/editor_user";
        }
    }

    /**　更新処理実行 */
    @PostMapping("/update")
    public String update(EditorUserForm form,
            RedirectAttributes attributes) {
        // エンティティへの変換
        EditorUser user = EditorUserHelper.convertEntity(form);
        // 更新処理
        service.update(user);
        // フラッシュメッセージ
        attributes.addFlashAttribute("message", "データが更新されました");
        // PRGパターン
        return "redirect:/editor_user";
    }

    /** 削除処理実行 */
    @PostMapping("/delete/{code}")
    public String delete(@PathVariable("code") String code, RedirectAttributes attributes) {
        // 削除処理
        service.delete(code);
        // フラッシュメッセージ
        attributes.addFlashAttribute("message", "データが削除されました");
        // PRGパターン
        return "redirect:/editor_user";
    }

}