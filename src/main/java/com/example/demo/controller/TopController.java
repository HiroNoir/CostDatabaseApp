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
    // SecurityConfigの「.loginPage("/login")」で指定してある
    @GetMapping("/login")
    public String login(@ModelAttribute LoginForm form) {
        return "login/login";
    }

    /** 【ログイン後のトップページ表示】 */
    // SecurityConfigの「.defaultSuccessUrl("/", true)」で指定してある
    @GetMapping("/")
    public String top() {
        return "login/menu";
    }

}