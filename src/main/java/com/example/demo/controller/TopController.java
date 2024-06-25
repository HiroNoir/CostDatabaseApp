package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.demo.form.LoginForm;

/**
* トップコントローラークラス
*/
@Controller
public class TopController {

    /** 【ログイン画面表示】 */
    @GetMapping("/login")
    public String login(@ModelAttribute LoginForm form) {
        return "login/login";
    }

    /** 【ログイン後のトップページ表示】 */
    @GetMapping("/")
    public String top() {
        return "redirect:/employee/list";
    }

}